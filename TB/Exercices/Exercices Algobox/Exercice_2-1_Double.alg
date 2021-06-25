<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER Double" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Val" algoitem="Val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Double" algoitem="Double EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#Val#231#pasliste" algoitem="Val PREND_LA_VALEUR 231"/>
        <item code="5#Double#Val*2#pasliste" algoitem="Double PREND_LA_VALEUR Val*2"/>
        <item code="3#Val#1#pasliste" algoitem="AFFICHER Val"/>
        <item code="4#La ligne suivante multiplie la ligne précédente par 2#1" algoitem="AFFICHER &quot;La ligne suivante multiplie la ligne précédente par 2&quot;"/>
        <item code="3#Double#0#pasliste" algoitem="AFFICHER Double"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
