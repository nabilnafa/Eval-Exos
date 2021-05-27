<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (S==&quot;M&quot; ou S==&quot;m&quot;) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#S" algoitem="S EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Bonjour, cher Zorglubien(ne),#1" algoitem="AFFICHER &quot;Bonjour, cher Zorglubien(ne),&quot;"/>
        <item code="4#Pour savoir si vous êtes imposable,#1" algoitem="AFFICHER &quot;Pour savoir si vous êtes imposable,&quot;"/>
        <item code="4#Veuillez indiquer votre sexe (M pour masculin, F pour féminin) :#1" algoitem="AFFICHER &quot;Veuillez indiquer votre sexe (M pour masculin, F pour féminin) :&quot;"/>
        <item code="2#S#pasliste" algoitem="LIRE S"/>
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="6#S==&quot;M&quot; ou S==&quot;m&quot;" algoitem="SI (S==&quot;M&quot; ou S==&quot;m&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#A>20" algoitem="SI (A>20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Vous êtes imposable#1" algoitem="AFFICHER &quot;Vous êtes imposable&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#Vous n'êtes pas imposable#1" algoitem="AFFICHER &quot;Vous n'êtes pas imposable&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#A>=18 ET A&lt;=35" algoitem="SI (A>=18 ET A&lt;=35) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Vous êtes imposable#1" algoitem="AFFICHER &quot;Vous êtes imposable&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="4#Vous n'êtes pas imposable#1" algoitem="AFFICHER &quot;Vous n'êtes pas imposable&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#* MERCI *#0" algoitem="AFFICHER &quot;* MERCI *&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
