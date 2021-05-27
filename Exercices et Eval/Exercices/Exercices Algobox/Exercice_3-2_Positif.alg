<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (N==0) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez saisir un nombre (autre que 0), puis ENTREE, pour savoir s'il est positif ou négatif&quot;" code="4#Veuillez saisir un nombre (autre que 0), puis ENTREE, pour savoir s'il est positif ou négatif#1"/>
        <item algoitem="LIRE N" code="2#N#pasliste"/>
        <item algoitem="SI (N>0) ALORS" code="6#N>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Ce nombre est positif&quot;" code="4#Ce nombre est positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (N&lt;0) ALORS" code="6#N&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Ce nombre est négatif&quot;" code="4#Ce nombre est négatif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (N==0) ALORS" code="6#N==0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;J'avais précisé 'AUTRE QUE 0' !!!&quot;" code="4#J'avais précisé 'AUTRE QUE 0' !!!#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
