---                 *** Requêtes d'interrogation sur la base Northwind ***

-- 1 - Liste des contacts français :


SELECT CompanyName as 'Société', ContactName as 'Contact', ContactTitle as 'Fonction', Phone as 'Téléphone'
FROM customers
WHERE Country = 'France'



-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :
-- L'exemple de l'exercice n'indique que 3 lignes, pourtant il y en a beaucoup plus, d'où l'ajout de CompanyName pour vérifier

SELECT productName as 'Produit', unitPrice as 'Prix', CompanyName as "Nom de l'entreprise'"
FROM products, suppliers
WHERE CompanyName = 'Exotic Liquids'




-- 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant :


SELECT count(productID) as Nbre_Produits, CompanyName as Fournisseur
FROM products, suppliers
WHERE Country = 'France' AND suppliers.SupplierID = products.SupplierID
GROUP BY CompanyName
ORDER BY Nbre_Produits DESC

        -- ou avec JOIN :

SELECT count(productID) as Nbre_Produits, CompanyName as Fournisseur
FROM products
JOIN suppliers
ON Country = 'France' AND suppliers.SupplierID = products.SupplierID
GROUP BY CompanyName
ORDER BY Nbre_Produits DESC




-- 4 - Liste des clients Français ayant plus de 10 commandes :

SELECT customers.CompanyName as Client, count(DISTINCT order_details.OrderID) as Nbre_Commandes
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN order_details ON order_details.OrderID = orders.OrderID
WHERE customers.Country = 'France'
GROUP BY customers.CompanyName HAVING Nbre_Commandes > 10

--- Note : On peut aussi utiliser des alias comme ci-dessous :

SELECT CompanyName AS Client, COUNT(DISTINCT od.OrderID) As Nbre_commande
FROM customers AS c
JOIN orders AS o ON o.CustomerID = c.CustomerID
JOIN order_details AS od ON od.OrderID = o.OrderID
WHERE c.Country = 'France'
GROUP BY c.CompanyName HAVING Nbre_commande > 10




-- 5 - Liste des clients ayant un chiffre d’affaires > 30.000 :

SELECT c.CompanyName AS Client, SUM(od.UnitPrice*od.Quantity) AS CA, c.Country
FROM customers AS c
JOIN orders AS o ON o.CustomerID = c.CustomerID
JOIN order_details AS od ON od.OrderID = o.OrderID
GROUP BY c.CompanyName, c.Country HAVING CA > 30000
ORDER BY CA DESC




-- 6 – Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » :

SELECT DISTINCT c.Country AS Pays
FROM customers AS c
JOIN orders AS o ON o.CustomerID = c.CustomerID
JOIN order_details AS od ON od.OrderID = o.OrderID
JOIN products AS p ON p.ProductID = od.ProductID
JOIN suppliers AS s ON S.SupplierID = p.SupplierID
WHERE s.CompanyName = 'Exotic Liquids'
ORDER BY Pays ASC




-- 7 – Montant des ventes de 1997 :

SELECT SUM(UnitPrice * Quantity) AS 'Montant Ventes 97'
FROM order_details
JOIN orders ON order_details.OrderID = orders.OrderID
WHERE YEAR(orders.OrderDate) = 1997

        -- ou (avec alias) :

SELECT SUM(od.UnitPrice * od.Quantity) AS 'Montant Ventes 97'
FROM order_details od
JOIN orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1997




-- 8 – Montant des ventes de 1997 mois par mois :


SELECT MONTH(o.OrderDate) AS 'Mois 97', SUM(od.UnitPrice * od.Quantity) AS 'Montant Ventes'
FROM order_details od
JOIN orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1997
GROUP BY MONTH(o.OrderDate)  

-- Attention, GROUP BY ne reconnait ni guillemets ni apostrophes ni espacements, GROUP BY 'mois 97' est impossible
-- Dans l'exemple ci-dessous, on supprime les espaces, mais le rendu n'est pa celui attendu dans l'exercice

SELECT MONTH(o.OrderDate) AS Mois97, SUM(od.UnitPrice * od.Quantity) AS 'Montant Ventes'
FROM order_details od
JOIN orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1997
GROUP BY Mois97



-- 9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ?

SELECT MAX(o.OrderDate) AS 'Date de la dernière commande'
FROM orders o
JOIN customers c ON c.CustomerID = O.CustomerID
WHERE c.CompanyName = 'Du monde entier'

-- NB : Les dates sont au format anglo (YYYYMMDD), donc fonction MAX est appropriée. Elle l'interprète comme un 'ENTIER'



-- 10 – Quel est le délai moyen de livraison en jours ?

SELECT ROUND(AVG(DATEDIFF (o.ShippedDate,o.OrderDate))) AS 'Délai moyen de livraison en jours'
FROM orders o 

-- ROUND permet d'arrondir
-- FLOOR arrondit à l'entier inférieur
-- CEILING arrondit à l'entier supérieur
