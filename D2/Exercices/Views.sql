-- Créez les vues demandées et interrogez-les pour vérifier qu'elles correspondent bien aux attentes.

-- Exercice 1 : base hotel

-- 01. Afficher la liste des hôtels avec leur station.

CREATE VIEW v_hotel_station
AS
SELECT hotel.hot_nom AS "Nom d'hôtel", station.sta_nom AS "Nom de station" 
FROM hotel
JOIN station ON  station.sta_id = hotel.hot_sta_id



-- 02. Afficher la liste des chambres et leur hôtel

CREATE VIEW v_chambre_hotel
AS
SELECT hotel.hot_nom AS "Nom d'hôtel", chambre.cha_numero "N° de chambre"
FROM hotel
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id


-- 03. Afficher la liste des réservations avec le nom des clients

CREATE VIEW v_resa_client
AS
SELECT reservation.res_id AS "N° de réservation", CONCAT (client.cli_nom, " ", client.cli_prenom) AS "Nom et prénom du client"
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id


-- 04. Afficher la liste des chambres avec le nom de l'hôtel et le nom de la station

CREATE VIEW v_chambre_hotel_station
AS
SELECT chambre.cha_numero AS "N° de chambre", hotel.hot_nom AS "Nom d'hôtel", station.sta_nom AS "Nom de station"
FROM hotel
JOIN station ON  station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id


-- 05. Afficher les réservations avec le nom du client et le nom de l'hôtel

CREATE VIEW v_resa_client_hotel
AS
SELECT reservation.res_id AS "N° de réservation", CONCAT (client.cli_nom, " ", client.cli_prenom) AS "Nom et prénom du client", hotel.hot_nom AS "Nom d'hôtel"
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id


--  Exercice 2 : base gescom
-- Réalisez les vues suivantes à partir de la base gescom.

-- 01.      v_Details correspondant à la requête : _A partir de la table orders_details, afficher par code produit :
--          la somme des quantités commandées et le prix total correspondant :
--          on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot.

SELECT DISTINCT products.pro_id AS 'Code Produit', (orders_details.ode_quantity) AS QteTot, (orders_details.ode_quantity * orders_details.ode_unit_price) AS PrixTot
FROM orders_details
JOIN products ON products.pro_id = orders_details.ode_pro_id

-- 02.      v_Ventes_Zoom correspondant à la requête : Afficher les ventes dont le code produit est ZOOM
--          (affichage de toutes les colonnes de la table orders_details).

SELECT products.pro_ref AS "Code produit", orders_details.*
FROM products LEFT JOIN orders_details ON orders_details.ode_pro_id = products.pro_id
WHERE pro_ref ="ZOOM"

-- habitudes à prendre :
-- 1. mettre sur la même ligne FROM et JOIN (pour mieux comprendre la logique des LEFT/RIGHT) pour permettre d'afficher les lignes sans correspondance (ici, ZOOM n'a jamais été commandé, et donc n'existe pas dans la table order_details)
-- 2. distinguer la condition de jointure (avec JOIN) et la condition de contrainte (avec WHERE)
-- 3. LEFT ou RIGHT va être déterminé par la table où la condition "a du sens" (ici: 'products', puisque ZOOM est inexistante dans 'orders_details')

