<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER X" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#X" algoitem="X EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un chiffre#0" algoitem="AFFICHER &quot;Entrez un chiffre&quot;"/>
        <item code="2#N#pasliste" algoitem="LIRE N"/>
        <item code="12#X#1#10" algoitem="POUR X ALLANT_DE 1 A 10">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#N#0#pasliste" algoitem="AFFICHER N"/>
            <item code="4#x#0" algoitem="AFFICHER &quot;x&quot;"/>
            <item code="3#X#0#pasliste" algoitem="AFFICHER X"/>
            <item code="4#=#0" algoitem="AFFICHER &quot;=&quot;"/>
            <item code="20#N*X#1" algoitem="AFFICHERCALCUL N*X"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Merci#0" algoitem="AFFICHER &quot;Merci&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
