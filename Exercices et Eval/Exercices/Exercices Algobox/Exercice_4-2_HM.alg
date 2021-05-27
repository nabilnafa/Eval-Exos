<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="M PREND_LA_VALEUR M+1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="H EST_DU_TYPE NOMBRE" code="1#NOMBRE#H"/>
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Pour connaître l'heure dans une minute, veuiller indiquer l'heure.&quot;" code="4#Pour connaître l'heure dans une minute, veuiller indiquer l'heure.#1"/>
        <item algoitem="AFFICHER &quot;Veuillez commencer par saisir l'heure&quot;" code="4#Veuillez commencer par saisir l'heure#1"/>
        <item algoitem="LIRE H" code="2#H#pasliste"/>
        <item algoitem="AFFICHER &quot;Merci. Veuillez maintenant indiquer les minutes&quot;" code="4#Merci. Veuillez maintenant indiquer les minutes#1"/>
        <item algoitem="LIRE M" code="2#M#pasliste"/>
        <item algoitem="M PREND_LA_VALEUR M+1" code="5#M#M+1#pasliste"/>
        <item algoitem="SI (M==60) ALORS" code="6#M==60">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="H PREND_LA_VALEUR H+1" code="5#H#H+1#pasliste"/>
            <item algoitem="M PREND_LA_VALEUR 0" code="5#M#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (H==24) ALORS" code="6#H==24">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="H PREND_LA_VALEUR 0" code="5#H#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;Dans une minute, il sera &quot;" code="4#Dans une minute, il sera #0"/>
        <item algoitem="AFFICHER H" code="3#H#0#pasliste"/>
        <item algoitem="AFFICHER &quot;:&quot;" code="4#:#0"/>
        <item algoitem="AFFICHER M" code="3#M#1#pasliste"/>
        <item algoitem="AFFICHER &quot;* MERCI *&quot;" code="4#* MERCI *#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
