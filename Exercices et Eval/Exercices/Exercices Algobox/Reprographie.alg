<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;veuillez saisir le nombre de photocopies que vous souhaitez effectuer :&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#NB" algoitem="NB EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#PX" algoitem="PX EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Bonjour, pour connaître le tarif qui vous sera facturé,#1" algoitem="AFFICHER &quot;Bonjour, pour connaître le tarif qui vous sera facturé,&quot;"/>
        <item code="4#veuillez saisir le nombre de photocopies que vous souhaitez effectuer :#1" algoitem="AFFICHER &quot;veuillez saisir le nombre de photocopies que vous souhaitez effectuer :&quot;"/>
        <item code="2#NB#pasliste" algoitem="LIRE NB"/>
        <item code="6#NB&lt;=10" algoitem="SI (NB&lt;=10) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#PX#0.10#pasliste" algoitem="PX PREND_LA_VALEUR 0.10"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#NB&lt;=20" algoitem="SI (NB&lt;=20) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#PX#0.09#pasliste" algoitem="PX PREND_LA_VALEUR 0.09"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#PX#0.08#pasliste" algoitem="PX PREND_LA_VALEUR 0.08"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#Pour cette quantité, le montant total est de #0" algoitem="AFFICHER &quot;Pour cette quantité, le montant total est de &quot;"/>
        <item code="20#NB*PX#0" algoitem="AFFICHERCALCUL NB*PX"/>
        <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
        <item code="4#* MERCI *#0" algoitem="AFFICHER &quot;* MERCI *&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
