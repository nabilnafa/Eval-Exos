<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="TANT_QUE (NB>3 OU NB&lt;1) FAIRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="NB EST_DU_TYPE NOMBRE" code="1#NOMBRE#NB"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez saisir un nombre entre 1 et 3&quot;" code="4#Veuillez saisir un nombre entre 1 et 3#0"/>
        <item algoitem="LIRE NB" code="2#NB#pasliste"/>
        <item algoitem="TANT_QUE (NB>3 OU NB&lt;1) FAIRE" code="15#NB>3 OU NB&lt;1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Le chiffre doit être inclus entre 1 et 3. Veuillez le saisir à nouveau&quot;" code="4#Le chiffre doit être inclus entre 1 et 3. Veuillez le saisir à nouveau#1"/>
            <item algoitem="LIRE NB" code="2#NB#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;* MERCI *&quot;" code="4#* MERCI *#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
