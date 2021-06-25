<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER Y" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="X EST_DU_TYPE NOMBRE" code="1#NOMBRE#X"/>
        <item algoitem="Y EST_DU_TYPE NOMBRE" code="1#NOMBRE#Y"/>
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Bonjour, veuillez saisir un chiffre afin de connaître&quot;" code="4#Bonjour, veuillez saisir un chiffre afin de connaître#1"/>
        <item algoitem="AFFICHER &quot;la somme de tous les entiers entre un et votre chiffre&quot;" code="4#la somme de tous les entiers entre un et votre chiffre#0"/>
        <item algoitem="Y PREND_LA_VALEUR 0" code="5#Y#0#pasliste"/>
        <item algoitem="LIRE N" code="2#N#pasliste"/>
        <item algoitem="POUR X ALLANT_DE 1 A N" code="12#X#1#N">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="Y PREND_LA_VALEUR Y+X" code="5#Y#Y+X#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le résultat est &quot;" code="4#Le résultat est #0"/>
        <item algoitem="AFFICHER Y" code="3#Y#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
