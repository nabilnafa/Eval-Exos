<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="TANT_QUE (N!=0) FAIRE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
        <item algoitem="CPT EST_DU_TYPE NOMBRE" code="1#NOMBRE#CPT"/>
        <item algoitem="PG EST_DU_TYPE NOMBRE" code="1#NOMBRE#PG"/>
        <item algoitem="IPG EST_DU_TYPE NOMBRE" code="1#NOMBRE#IPG"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="N PREND_LA_VALEUR 1" code="5#N#1#pasliste"/>
        <item algoitem="CPT PREND_LA_VALEUR 0" code="5#CPT#0#pasliste"/>
        <item algoitem="PG PREND_LA_VALEUR 0" code="5#PG#0#pasliste"/>
        <item algoitem="TANT_QUE (N!=0) FAIRE" code="15#N!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Saisir un nombre&quot;" code="4#Saisir un nombre#1"/>
            <item algoitem="LIRE N" code="2#N#pasliste"/>
            <item algoitem="CPT PREND_LA_VALEUR CPT+1" code="5#CPT#CPT+1#pasliste"/>
            <item algoitem="SI (CPT==1 OU N>PG) ALORS" code="6#CPT==1 OU N>PG">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="PG PREND_LA_VALEUR N" code="5#PG#N#pasliste"/>
                <item algoitem="IPG PREND_LA_VALEUR CPT" code="5#IPG#CPT#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Le plus grand nombre que vous avez saisi est &quot;" code="4#Le plus grand nombre que vous avez saisi est #0"/>
        <item algoitem="AFFICHER PG" code="3#PG#0#pasliste"/>
        <item algoitem="AFFICHER &quot;.&quot;" code="4#.#1"/>
        <item algoitem="AFFICHER &quot;C'est le &quot;" code="4#C'est le #0"/>
        <item algoitem="AFFICHER IPG" code="3#IPG#0#pasliste"/>
        <item algoitem="AFFICHER &quot;e que vous avez saisi&quot;" code="4#e que vous avez saisi#0"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
