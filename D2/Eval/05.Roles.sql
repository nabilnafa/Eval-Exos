--              *** 5. Rôles ***

-- A partir de la base gescom_afpa :
-- Créez un groupe marketing 

CREATE ROLE 
    'gescom_afpa_marketing'@'localhost'


-- qui peut ajouter, modifier et supprimer des produits et des catégories,
-- d'abord pour 'products'

GRANT SELECT, INSERT, UPDATE, DELETE
ON gescom_afpa.products
TO 'gescom_afpa_marketing'@'localhost';


-- ensuite pour 'categories'

GRANT SELECT, INSERT, UPDATE, DELETE
ON gescom_afpa.categories
TO 'gescom_afpa_marketing'@'localhost';


-- consulter des commandes, 

GRANT SELECT
ON gescom_afpa.orders
TO 'gescom_afpa_marketing'@'localhost';


-- leur détails et les clients. Ce groupe ne peut rien faire sur les autres tables.
-- Les deux requêtes peuvent être envoyées en même temps dans SQL

GRANT SELECT ON gescom_afpa.orders_details TO 'gescom_afpa_marketing'@'localhost';
GRANT SELECT ON gescom_afpa.customers TO 'gescom_afpa_marketing'@'localhost';





                                --- *** ---

                                
-- Pour tester la création du rôle et des privilèges, on crée un utilisateur :

CREATE USER 'roxanne'@'localhost' IDENTIFIED BY 'Police123*'


-- et on lui attribue le rôle créé plus haut: 

GRANT 'gescom_afpa_marketing'@'localhost' TO 'roxanne'@'localhost'

-- et ensuite on "active" le rôle :

SET DEFAULT ROLE 'gescom_afpa_marketing'@'localhost' TO roxanne@localhost

-- pour visualiser les privilèges accordés sur l'utilisateur actuel :

SHOW GRANTS FOR CURRENT_USER

-- ou même sur un rôle :

SHOW GRANTS FOR `gescom_afpa_marketing`@`localhost`


