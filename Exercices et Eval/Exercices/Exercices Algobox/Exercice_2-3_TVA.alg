<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="PHT EST_DU_TYPE NOMBRE" code="1#NOMBRE#PHT"/>
        <item algoitem="QTE EST_DU_TYPE NOMBRE" code="1#NOMBRE#QTE"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Pour obtenir votre montant TTC, incluant la TVA de 20%, veuillez indiquer le montant unitaire hors-taxe en euros :&quot;" code="4#Pour obtenir votre montant TTC, incluant la TVA de 20%, veuillez indiquer le montant unitaire hors-taxe en euros :#0"/>
        <item algoitem="LIRE PHT" code="2#PHT#pasliste"/>
        <item algoitem="TTC PREND_LA_VALEUR PHT*TVA*QTE" code="5#TTC#PHT*TVA*QTE#pasliste"/>
        <item algoitem="AFFICHER &quot;La TVA pour cet article s'élève à &quot;" code="4#La TVA pour cet article s'élève à #0"/>
        <item algoitem="AFFICHERCALCUL PHT*0.2" code="20#PHT*0.2#0"/>
        <item algoitem="AFFICHER &quot; €&quot;" code="4# €#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;Veuillez indiquer la quantité d'articles&quot;" code="4#Veuillez indiquer la quantité d'articles#1"/>
        <item algoitem="LIRE QTE" code="2#QTE#pasliste"/>
        <item algoitem="AFFICHER &quot;Pour &quot;" code="4#Pour #0"/>
        <item algoitem="AFFICHER QTE" code="3#QTE#0#pasliste"/>
        <item algoitem="AFFICHER &quot; articles, le montant TTC est de &quot;" code="4# articles, le montant TTC est de #0"/>
        <item algoitem="AFFICHERCALCUL PHT*1.2*QTE" code="20#PHT*1.2*QTE#0"/>
        <item algoitem="AFFICHER &quot; €&quot;" code="4# €#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;A bientôt pour d'autres conseils financiers :-)&quot;" code="4#A bientôt pour d'autres conseils financiers :-)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
