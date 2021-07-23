--              *** 6. Assurer les sauvegardes ***

-- Tout se fait depuis le terminal. Attention, le mdp demandé dans les étapes qui suivent est le mot de passe de l'utilisateur phpmyadmin (ici : "root") 


-- Pour sauvegarder :
mysqldump -u root -p gescom_afpa > bckp_gescom_afpa.sql



-- Pour restaurer 
-- On rentre dans mysql depuis le terminal, avec son identifiant (puis mdp) :
mysql -u root -p


-- On crée une base de données temporairement vide
CREATE DATABASE backup_gescom_afpa;
exit


-- On restaure afin d'importer les tables et leur contenu dans la base de données backup
mysql -u root -p backup_gescom_afpa < bckp_gescom_afpa.sql



-- En reproduisant la même opération sur différentes bases de données, et en les renommant backup_NomDuBackup, 
-- phpmyadmin crée un dossier 'backup' dans l'arborescence, où toutes les bases backup sont regroupées