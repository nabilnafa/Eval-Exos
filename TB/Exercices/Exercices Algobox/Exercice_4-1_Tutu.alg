<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (Tutu > Toto+4 OU Tata=&quot;OK&quot;) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Tutu" algoitem="Tutu EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Toto" algoitem="Toto EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Tata" algoitem="Tata EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="6#Tutu > Toto+4 OU Tata=&quot;OK&quot;" algoitem="SI (Tutu > Toto+4 OU Tata=&quot;OK&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#Tutu#Tutu+1#pasliste" algoitem="Tutu PREND_LA_VALEUR Tutu+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="5#Tutu#Tutu-1#pasliste" algoitem="Tutu PREND_LA_VALEUR Tutu-1"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
