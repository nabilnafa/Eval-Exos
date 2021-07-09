
-- Q1. Afficher dans l'ordre alphabétique et sur une seule colonne, les noms et prénoms des employés qui ont des enfants.
-- Présenter d'abord ceux qui en ont le plus.

SELECT CONCAT(emp_lastname, " ", emp_firstname)'Employé', emp_children as 'Nb_enfants'
FROM employees
WHERE emp_children > 0
ORDER BY emp_lastname ASC

-- CONCAT permet de fusionner deux colonnes en SQL. Il faut penser à ajouter l'espace entre les noms et prénoms


                                                -----------------

-- Q2. Y-a-t-il des clients étrangers ? Afficher leur nom, prénom et pays de résidence.

SELECT cus_lastname, cus_firstname, cus_countries_id
FROM `customers` 
WHERE cus_countries_id != 'FR'

-- Pas besoin de "AS". Dans l'exemple, les noms de colonnes restent inchangées


                                                -----------------


-- Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays.


SELECT DISTINCT cus_city, cus_countries_id, cou_name
FROM customers, countries
WHERE cus_countries_id = cou_id
ORDER BY cus_city ASC


                                                -----------------


-- Q4. Afficher le nom des clients dont les fiches ont été modifiées

SELECT cus_lastname, cus_update_date
FROM `customers` 
WHERE cus_update_date IS NOT NULL


                                                -----------------


-- Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne est qu'il habite une ville genre 'divos'.
-- Pouvez-vous l'aider ?

SELECT cus_id, cus_lastname, cus_firstname, cus_city
FROM `customers` 
WHERE cus_city LIKE "%divos%"


                                                -----------------


-- Q6. Quel est le produit dont le prix de vente est le moins cher ? Afficher le prix, l'id et le nom du produit.


SELECT pro_id, pro_name, pro_price
FROM products
ORDER BY pro_price ASC
LIMIT 1

-- Pour limiter la recherche à la ligne contenant le tarif le moins élevé, je classe d'abord avec ASC, puis LIMIT 1


                                                -----------------


-- Q7. Lister les produits qui n'ont jamais été vendus

SELECT pro_id, pro_ref, pro_name
FROM products
WHERE pro_price NOT IN 
(SELECT ode_unit_price FROM orders_details)

-- Q8. Afficher les produits commandés par Madame Pikatchien.


SELECT pro_id, pro_ref, pro_color, cus_id, cus_lastname, ord_id, ode_id
FROM products, customers, orders_details, orders
WHERE cus_lastname = 'Pikatchien' AND ode_ord_id = ord_id AND ord_cus_ID = cus_ID AND pro_id = ode_pro_ID

-- ou bien avec JOIN : 

SELECT pro_id, pro_ref, pro_color, pro_name, cus_id, cus_lastname, ord_id, ode_id
FROM products
JOIN orders_details ON pro_id=ode_pro_id
JOIN orders ON ode_ord_id=ord_id
JOIN customers ON ord_cus_id=cus_id
WHERE cus_lastname="Pikatchien"

                                                -----------------


-- Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés.

SELECT cat_id, cat_name, pro_name
FROM categories, products
WHERE pro_cat_id = cat_id
ORDER BY cat_name ASC

                                                -----------------



-- Q10.      Afficher l'organigramme du magasin de Compiègne 
--           Afficher le nom et prénom des employés, classés par ordre alphabétique,
--           ainsi que celui de leur supérieur hiérarchique (et éventuellement leurs postes respectifs, si vous y parvenez).


SELECT
    CONCAT(e.emp_lastname, ' ', e.emp_firstname) AS Employees,
    pos_libelle AS "Poste occupé",
    CONCAT(s.emp_lastname, ' ', s.emp_firstname) AS Superieur

FROM
    employees AS e
JOIN posts ON pos_id = emp_pos_id
JOIN shops ON sho_city = 'Compiègne' 
JOIN employees AS s
ON
    s.emp_id = e.emp_superior_id
WHERE
    e.emp_sho_id = s.emp_sho_id
ORDER BY
    Employees ASC


                                                -----------------


--Q11.   Quel produit a été vendu avec la remise la plus élevée ? Afficher le numéro et le nom du produit,
--       le numéro de commande, le numéro de ligne de commande, et le montant de la remise.

SELECT pro_id, pro_name, pro_ref, ord_id, ROUND((ode_quantity*ode_unit_price*ode_discount)/100, 2) AS "Montant de la remise"
FROM products, orders, orders_details
WHERE ord_id = ode_ord_id AND pro_id = ode_pro_id
ORDER BY ode_discount DESC
LIMIT 1

-- Ici la remise la plus élevée est demandée en pourcentage. Donc la remise la plus élevée n'est pas forcément le 
-- montant le plus élevé.


                                                -----------------



-- Q12    Combien y-a-t-il de clients canadiens ? Afficher dans une colonne intitulée 'Nb clients Canada'

SELECT count(cus_id) as "Nb clients canadiens"
FROM customers, countries
WHERE cou_name = 'Canada' AND cus_countries_id = cou_id


                                                -----------------


-- Q13. Afficher le détail des commandes de 2020.

SELECT `ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`, `ord_order_date`
FROM `orders_details`, orders
WHERE ode_ord_id = ord_id AND ord_order_date >= "2020-01-01" AND ord_order_date <= "2020-12-31"


-- Mettre les dates entre guillemets pour pouvoir utiliser les signes < & > 


                                                -----------------

--      Q14. Afficher les coordonnées des fournisseurs pour lesquels des commandes ont été passées.

SELECT DISTINCT `sup_id`,`sup_name`,`sup_address`,`sup_zipcode`,`sup_city`,`cou_name`,`sup_phone`,`sup_mail`
FROM `suppliers`, countries, products, orders_details
WHERE `cou_id` = `sup_countries_id`AND pro_sup_id = sup_id AND ode_ord_id IS NOT NULL


                                                -----------------


--      Q15. Quel est le chiffre d'affaires de 2020 ?

SELECT ROUND (SUM((`ode_unit_price`*`ode_quantity`)-(`ode_unit_price`*`ode_quantity`*`ode_discount`/100)),2) as "Chiffre d'affaires"
FROM orders_details, orders
WHERE ord_id = ode_ord_id AND ord_order_date >= "2020-01-01" AND ord_order_date <= "2020-12-31" 


-- ou plus simple encore :

SELECT ROUND (SUM((`ode_unit_price`*`ode_quantity`)*(1-ode_discount/100)),2) as "Chiffre d'affaires"
FROM orders_details, orders
WHERE ord_id = ode_ord_id AND ord_order_date >= "2020-01-01" AND ord_order_date <= "2020-12-31" 


                                                -----------------


--      Q16. Lister le total de chaque commande par total décroissant. 
--      Afficher le numéro de commande, la date, le total et le nom du client).

SELECT DISTINCT ord_id, cus_lastname, ord_order_date, SUM(`ode_unit_price`*`ode_quantity`) as Total
FROM orders, orders_details, customers
WHERE cus_id = ord_cus_id AND ord_id = ode_ord_id
GROUP BY ord_id
ORDER BY Total DESC


                                                -----------------

--       Q17. Quel est le montant du panier moyen ?     ***DIFFERENT DU RESULTAT NCODE***

SELECT ROUND (AVG((`ode_unit_price`*`ode_quantity`)*(1-ode_discount/100)),2) as "Panier moyen"
FROM orders_details


                                                -----------------



-- Q18. La version 2020 du produit barb004 s'appelle désormais Camper et, bonne nouvelle, son prix subit une baisse de 10%. Mettre à jour la fiche de ce produit.

UPDATE products
SET 
pro_name = "Camper", `pro_price` = pro_price*0.9
WHERE pro_ref = "barb004"


                                                -----------------

-- Q19. L'inflation en France l'année dernière a été de 1,1%. Appliquer cette augmentation à la gamme de parasols.




UPDATE products
SET 
`pro_price` = pro_price*1.1
   WHERE pro_cat_id IN
      (SELECT cat_id FROM categories WHERE cat_name = "Parasols")

-- ou sans sous-requête :

UPDATE products, categories
SET 
`pro_price` = pro_price*100
WHERE pro_cat_id = cat_id AND cat_name = "Parasols"

-- pour vérifier : 

SELECT `pro_price`,`pro_name`
FROM `products`, categories 
WHERE cat_id = pro_cat_id AND cat_name = "Parasols"


-----------------


-- Q20. Supprimer les produits non vendus de la catégorie "Tondeuses électriques".
--      Vous devez utiliser une sous-requête sans indiquer de valeurs de clés.

DELETE FROM products

WHERE
    pro_cat_id IN(
    SELECT cat_id FROM categories WHERE cat_name = "Tondeuses électriques") 
   
AND
   
	pro_id NOT IN(
    SELECT ode_pro_id FROM orders_details)
