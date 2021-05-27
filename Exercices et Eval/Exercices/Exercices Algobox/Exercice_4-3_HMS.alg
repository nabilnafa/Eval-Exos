<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="M PREND_LA_VALEUR 0" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#H" algoitem="H EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#M" algoitem="M EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#S" algoitem="S EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Pour connaître l'heure dans une minute, veuiller indiquer l'heure.#1" algoitem="AFFICHER &quot;Pour connaître l'heure dans une minute, veuiller indiquer l'heure.&quot;"/>
        <item code="4#Veuillez commencer par saisir l'heure#1" algoitem="AFFICHER &quot;Veuillez commencer par saisir l'heure&quot;"/>
        <item code="2#H#pasliste" algoitem="LIRE H"/>
        <item code="4#Merci. Veuillez maintenant indiquer les minutes#1" algoitem="AFFICHER &quot;Merci. Veuillez maintenant indiquer les minutes&quot;"/>
        <item code="2#M#pasliste" algoitem="LIRE M"/>
        <item code="4#Merci. Veuillez enfin saisir les secondes#0" algoitem="AFFICHER &quot;Merci. Veuillez enfin saisir les secondes&quot;"/>
        <item code="2#S#pasliste" algoitem="LIRE S"/>
        <item code="5#S#S+1#pasliste" algoitem="S PREND_LA_VALEUR S+1"/>
        <item code="6#S==60" algoitem="SI (S==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#M#M+1#pasliste" algoitem="M PREND_LA_VALEUR M+1"/>
            <item code="5#S#0#pasliste" algoitem="S PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#M==60" algoitem="SI (M==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#H#H+1#pasliste" algoitem="H PREND_LA_VALEUR H+1"/>
            <item code="5#M#0#pasliste" algoitem="M PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#H==24" algoitem="SI (H==24) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#H#0#pasliste" algoitem="H PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#Dans une seconde, il sera #0" algoitem="AFFICHER &quot;Dans une seconde, il sera &quot;"/>
        <item code="3#H#0#pasliste" algoitem="AFFICHER H"/>
        <item code="4#h #0" algoitem="AFFICHER &quot;h &quot;"/>
        <item code="3#M#0#pasliste" algoitem="AFFICHER M"/>
        <item code="4#m #0" algoitem="AFFICHER &quot;m &quot;"/>
        <item code="3#S#0#pasliste" algoitem="AFFICHER S"/>
        <item code="4#s#1" algoitem="AFFICHER &quot;s&quot;"/>
        <item code="4#* MERCI *#0" algoitem="AFFICHER &quot;* MERCI *&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
