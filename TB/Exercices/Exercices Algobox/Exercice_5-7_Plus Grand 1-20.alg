<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="PG EST_DU_TYPE NOMBRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#CPT" algoitem="CPT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#PG" algoitem="PG EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#IPG" algoitem="IPG EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#PG#0#pasliste" algoitem="PG PREND_LA_VALEUR 0"/>
        <item code="12#CPT#1#20" algoitem="POUR CPT ALLANT_DE 1 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#entrez un nombre#1" algoitem="AFFICHER &quot;entrez un nombre&quot;"/>
            <item code="2#N#pasliste" algoitem="LIRE N"/>
            <item code="6#CPT==1 OU N>PG" algoitem="SI (CPT==1 OU N>PG) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#PG#N#pasliste" algoitem="PG PREND_LA_VALEUR N"/>
                <item code="5#IPG#CPT#pasliste" algoitem="IPG PREND_LA_VALEUR CPT"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le plus grand nombre que vous avez saisi est #0" algoitem="AFFICHER &quot;Le plus grand nombre que vous avez saisi est &quot;"/>
        <item code="3#PG#0#pasliste" algoitem="AFFICHER PG"/>
        <item code="4#.#1" algoitem="AFFICHER &quot;.&quot;"/>
        <item code="4#C'est le #0" algoitem="AFFICHER &quot;C'est le &quot;"/>
        <item code="3#IPG#0#pasliste" algoitem="AFFICHER IPG"/>
        <item code="4#e que vous avez saisi#0" algoitem="AFFICHER &quot;e que vous avez saisi&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
