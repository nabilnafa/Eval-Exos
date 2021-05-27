<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;. Merci :-)&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Carré" algoitem="Carré EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Veuillez insérer un nombre, puis ENTREE pour en connaître le carré :#1" algoitem="AFFICHER &quot;Veuillez insérer un nombre, puis ENTREE pour en connaître le carré :&quot;"/>
        <item code="2#N#pasliste" algoitem="LIRE N"/>
        <item code="5#Carré#N*N#pasliste" algoitem="Carré PREND_LA_VALEUR N*N"/>
        <item code="4#Le carré de #0" algoitem="AFFICHER &quot;Le carré de &quot;"/>
        <item code="3#N#0#pasliste" algoitem="AFFICHER N"/>
        <item code="4# est #0" algoitem="AFFICHER &quot; est &quot;"/>
        <item code="3#Carré#0#pasliste" algoitem="AFFICHER Carré"/>
        <item code="4#. Merci :-)#0" algoitem="AFFICHER &quot;. Merci :-)&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
