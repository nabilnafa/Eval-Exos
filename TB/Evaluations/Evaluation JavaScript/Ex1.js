var jeune = 0
var moyen = 0
var vieux = 0


do {var n =parseInt(prompt("Veuillez saisir un âge"))
if (isNaN(n)) {
    alert("Ceci n'est pas un nombre \nLa saisie s'arrête ici") 
    break}

if (n < 20) {jeune == jeune++}
    else if (n<40) {moyen == moyen++}
        else {vieux == vieux++};
                                    }

while (n < 100) 

alert("Le nombre de jeunes est de " + jeune + "\nLe nombre de moyens est de " + moyen + "\nLe nombre de vieux est de " + vieux + ", dont un centenaire.")
