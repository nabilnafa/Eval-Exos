<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;      'Belle marquise, vos beaux yeux me font mourir d’amour.'&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#A" algoitem="A EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#B" algoitem="B EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#C" algoitem="C EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#D" algoitem="D EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#L1" algoitem="L1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#L2" algoitem="L2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#L3" algoitem="L3 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#L4" algoitem="L4 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#L5" algoitem="L5 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#A#&quot;belle marquise &quot;#pasliste" algoitem="A PREND_LA_VALEUR &quot;belle marquise &quot;"/>
        <item code="5#B#&quot;vos beaux yeux &quot;#pasliste" algoitem="B PREND_LA_VALEUR &quot;vos beaux yeux &quot;"/>
        <item code="5#C#&quot;me font mourir &quot;#pasliste" algoitem="C PREND_LA_VALEUR &quot;me font mourir &quot;"/>
        <item code="5#D#&quot;d’amour &quot;#pasliste" algoitem="D PREND_LA_VALEUR &quot;d’amour &quot;"/>
        <item code="4#Voici un passage du Bourgeois Gentilhomme, de Molière :#1" algoitem="AFFICHER &quot;Voici un passage du Bourgeois Gentilhomme, de Molière :&quot;"/>
        <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
        <item code="4#      'Belle marquise, vos beaux yeux me font mourir d’amour.'#1" algoitem="AFFICHER &quot;      'Belle marquise, vos beaux yeux me font mourir d’amour.'&quot;"/>
        <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
        <item code="4#Voici maintenant 4 variantes en désordre, sans ponctuation ni majuscules#1" algoitem="AFFICHER &quot;Voici maintenant 4 variantes en désordre, sans ponctuation ni majuscules&quot;"/>
        <item code="4#On peut obtenir par exemple#1" algoitem="AFFICHER &quot;On peut obtenir par exemple&quot;"/>
        <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
        <item code="5#L1#B+C+D+A#pasliste" algoitem="L1 PREND_LA_VALEUR B+C+D+A"/>
        <item code="4#- #0" algoitem="AFFICHER &quot;- &quot;"/>
        <item code="3#L1#1#pasliste" algoitem="AFFICHER L1"/>
        <item code="5#L2#A+B+D+C#pasliste" algoitem="L2 PREND_LA_VALEUR A+B+D+C"/>
        <item code="4#- #0" algoitem="AFFICHER &quot;- &quot;"/>
        <item code="3#L2#1#pasliste" algoitem="AFFICHER L2"/>
        <item code="5#L3#A+D+B+C#pasliste" algoitem="L3 PREND_LA_VALEUR A+D+B+C"/>
        <item code="4#- #0" algoitem="AFFICHER &quot;- &quot;"/>
        <item code="3#L3#1#pasliste" algoitem="AFFICHER L3"/>
        <item code="5#L4#B+A+C+D#pasliste" algoitem="L4 PREND_LA_VALEUR B+A+C+D"/>
        <item code="4#- #0" algoitem="AFFICHER &quot;- &quot;"/>
        <item code="3#L4#1#pasliste" algoitem="AFFICHER L4"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
