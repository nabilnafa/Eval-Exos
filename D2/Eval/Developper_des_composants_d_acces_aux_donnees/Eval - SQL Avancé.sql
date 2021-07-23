                                        --- *** SQL Avancé : évaluation *** ---


-- 01. Vues
-- Créez une vue qui affiche le catalogue produits. L'id, la référence et le nom des produits, ainsi que l'id et le nom de la catégorie doivent apparaître.


            CREATE VIEW v_catalogue_produits
            AS
            SELECT products.pro_id as "N° de produit", products.pro_ref as "Référence produit", products.pro_name as "Nom du produit", categories.cat_id as "N° de catégorie", categories.cat_name as "Catégorie"
            FROM products
            JOIN categories ON categories.cat_id = products.pro_cat_id



                                            --------------------------

                                            

-- 02. Procédures stockées
-- Créez la procédure stockée "facture" qui permet d'afficher les informations nécessaires à une facture en fonction d'un numéro de commande.
-- Cette procédure doit sortir le montant total de la commande. NB: Pensez à vous renseigner sur les informations légales que doit comporter une facture.


        -- En se fiant aux informations légales indiquées sur une facture, on lance la procédure suivante :


            DELIMITER ;;

            DROP PROCEDURE IF EXISTS `facture`;;

            CREATE PROCEDURE facture(
                IN p_num_commande INT,
                OUT p_ord_id INT,
                OUT p_ord_date DATE,
                OUT p_pay_date DATE,
                OUT p_cust_names CHAR,
                OUT p_ode_id INT,
                OUT p_pro_name CHAR,
                OUT p_ode_qty INT,
                OUT p_pro_price INT,
                OUT p_ode_discount INT,
                OUT p_total INT
            )

            BEGIN

            SELECT orders.ord_id AS "N° de facture", orders.ord_order_date AS "Date de la vente", orders.ord_payment_date AS "Date de la facture", CONCAT(customers.cus_firstname, " ", customers.cus_lastname) AS "Identité du client", orders_details.ode_id AS "N° du bon de commande", products.pro_name AS "Désignation produit", orders_details.ode_quantity AS "Quantité", products.pro_price AS "Prix", orders_details.ode_discount AS "Réduction", ROUND ((`ode_unit_price`*`ode_quantity`)*(1-ode_discount/100),2)  INTO p_ord_id, p_ord_date, p_pay_date, p_cust_names, p_ord_id, p_pro_name, p_ode_qty, p_pro_price, p_ode_discount, p_total
            FROM customers
            JOIN orders ON customers.cus_id = orders.ord_cus_id
            JOIN orders_details ON orders.ord_id = orders_details.ode_ord_id
            JOIN products ON products.pro_id = orders_details.ode_pro_id
            WHERE p_num_commande = orders.ord_id;
            END;;

            DELIMITER ;


        -- Appel de procédure (ne fonctionne pas complètement)
        --(parfois des valeurs NULL apparaiisent, parfois, message d'erreur. Peut-être voir les jointures ?)

            CALL facture (10, @p_ord_id, @p_ord_date, @p_pay_date, @p_cust_names, @p_ode_id, @p_pro_name, @p_ode_qt_, @p_pro_price, @p_ode_discount, @p_total);
            SELECT @p_ord_id, @p_ord_date, @p_pay_date, @p_cust_names, @p_ode_id, @p_pro_name, @p_ode_qt_, @p_pro_price, @p_ode_discount, @p_total



                                            --------------------------



-- 03. Triggers

-- Présentez le déclencheur after_products_update demandé dans la phase 2 de la séance sur les déclencheurs.
-- Attention à bien créer une clé primaire pour la table 'commander_articles', même si l'exercice n'affiche que 3 clés, il faut penser à la 4e


            DELIMITER ;;

            Create TRIGGER after_products_update 
            AFTER UPDATE ON products
            FOR EACH ROW

            BEGIN
                IF NEW.pro_stock < NEW.pro_stock_alert THEN
                    INSERT  INTO commander_articles (qte,codart,date) VALUES ((NEW.pro_stock_alert - NEW.pro_stock),NEW.pro_id,NOW());
                END IF;
            END;
            ;;


                                            --------------------------



-- 04. Transactions

-- Amity HANNAH, Manageuse au sein du magasin d'Arras, vient de prendre sa retraite. 
-- Il a été décidé, après de nombreuses tractations, de confier son poste au pépiniériste le plus ancien en poste dans ce magasin.
-- Ce dernier voit alors son salaire augmenter de 5% et ses anciens collègues pépiniéristes passent sous sa direction.
-- Ecrire la transaction permettant d'acter tous ces changements en base des données.



--1. La base de données ne contient actuellement que des employés en postes.
-- Il a été choisi de garder en base une liste des anciens collaborateurs de l'entreprise partis en retraite.
-- Il va donc vous falloir ajouter une ligne dans la table posts pour référencer les employés à la retraite.

             D abord commencer par ajouter une ligne 'Retraités' dans la table 'Posts' 
             Inutile de préciser l ID puisqu il est en Auto-Increment, un NULL suffisait dans la requête 

--2. Décrire les opérations qui seront à réaliser sur la table posts.

            INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES (NULL, 'Retraité(e)');


--3. Ecrire les requêtes correspondant à ces opérations.


-- On cherche l'identifiant unique de l'employée Amity HANNAH et son n° de poste, et i'ID du post "Retraités"

            SELECT emp_id AS "N° d'employée", emp_pos_id "N° de poste" 
            FROM employees WHERE emp_lastname = "HANNAH" AND emp_firstname = "Amity"; -- On obtient 59 et 2

            SELECT pos_libelle AS "Libellé du poste", pos_id "N° de poste" 
            FROM posts WHERE pos_libelle = "Retraités"; -- On obtient 36


-- Connaître les employés actuels sous la supervision de Amity HANNAH (pour les attribuer au nouveau manager)
-- On n'obtient aucun résultat

            SELECT emp_lastname, emp_firstname 
            FROM `employees`
            WHERE emp_superior_id = 59


-- Connaître les employés pépiniéristes d'Arras

            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Employé", emp_id AS "N° d'employé", emp_enter_date AS "Date d'embauche", posts.pos_libelle AS "Poste occupé"
            FROM employees
            JOIN posts ON posts.pos_id = employees.emp_pos_id
            JOIN shops ON shops.sho_id = employees.emp_sho_id
            WHERE employees.emp_pos_id = 14 AND shops.sho_city = "Arras"


-- Connaître le salaire actuel de Dorian Hillary. On obtient 20450

            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Identité de l'employé", employees.emp_salary
            FROM `employees` 
            JOIN posts on posts.pos_id = employees.emp_pos_id
            WHERE employees.emp_id = 10


-- Connaître le pépiniériste avec le plus d'ancienneté dans le magasin d'Arras, on ajoute une ligne au code précédent
-- On obtient l'employé Dorian HILLARY, employé depuis le 10 mars 2002, et dont le n° d'employé est 10


            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Employé", emp_id AS "N° d'employé", emp_enter_date AS "Date d'embauche", posts.pos_libelle AS "Poste occupé"
            FROM employees
            JOIN posts ON posts.pos_id = employees.emp_pos_id
            JOIN shops ON shops.sho_id = employees.emp_sho_id
            WHERE employees.emp_pos_id = 14 AND shops.sho_city = "Arras"
            ORDER BY emp_enter_date ASC LIMIT 1


-- Ecrire la transaction


            START TRANSACTION;

            UPDATE employees SET emp_pos_id = 36 WHERE emp_id = 59; -- On attribue le poste de Retraité(e) à Amity HANNAH
            UPDATE employees SET employees.emp_pos_id = 2 WHERE employees.emp_id = 10; -- On attribue le poste de Manager à Dorian HILLARY
            UPDATE employees SET employees.emp_salary = (employees.emp_salary * 1.05) WHERE employees.emp_id = 10; -- On applique l'augmentation de 5% au salaire de Dorian HILLARY
            UPDATE employees SET emp_superior_id = 10 WHERE employees.emp_sho_id = 2 AND employees.emp_pos_id = 14 AND employees.emp_id != 10; -- On attribue aux pépiniéristes (sauf Dorian HILLARY) d'Arras leur nouveau manager
            COMMIT;




-- Vérifications de la transaction :

    -- Libellé du poste de Amity HANNAH

            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Identité de l'employé", posts.pos_libelle AS "Poste occupé"
            FROM `employees` 
            JOIN posts on posts.pos_id = employees.emp_pos_id
            WHERE employees.emp_id = 59


    -- Libellé du nouveau poste de Dorian HILLARY, et son nouveau salaire (On obtient 'Manageur', '21472.50')

            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Identité de l'employé", posts.pos_libelle AS "Poste occupé", employees.emp_salary
            FROM `employees` 
            JOIN posts on posts.pos_id = employees.emp_pos_id
            WHERE employees.emp_id = 10


    -- Liste des pépiniéristes d'Arras, avec l'ID de leur nouveau superviseur.
    -- On s'assure que Dorian HILLARY n'en fait plus partie


            SELECT CONCAT(emp_firstname, " ", emp_lastname) AS "Employé", posts.pos_libelle AS "Poste occupé", employees.emp_superior_id AS "ID du superviseur"
            FROM employees
            JOIN posts ON posts.pos_id = employees.emp_pos_id
            JOIN shops ON shops.sho_id = employees.emp_sho_id
            WHERE employees.emp_pos_id = 14 AND shops.sho_city = "Arras"




