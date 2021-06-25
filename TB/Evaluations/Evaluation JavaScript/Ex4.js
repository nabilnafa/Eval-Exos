var PU = parseInt(prompt("Veuillez indiquer le prix unitaire de votre article :"))
var QTE = parseInt(prompt("Veuillez indiquer combien d'articles vous commandez :"))
var REM = 0
var PORT = 6
var TOT = PU * QTE

function TotalCommande(){

    document.write("Pour " + QTE + " article(s), le montant de votre commande est de " + TOT + " € <br/> <br/>") 

    if (TOT < 100) {
        TOT = TOT - REM
                }
            else if (TOT <= 200) {
                    REM = 0.05 * TOT
                    document.write("Votre commande étant supérieure à 100€, vous bénéficiez d'une remise de 5%, soit " + REM + "€ <br/> Votre montant remisé est de " + (TOT - REM) + "€ <br/> <br/>");            
                                 }
                    else {
                        REM = 0.10 * TOT
                         document.write("Votre commande étant supérieure à 200€, vous bénéficiez d'une remise de 10%, soit " + REM + "€  <br/> Votre montant remisé est de " + (TOT - REM) + "€ <br/> <br/>");
                            }
                            
PORT = TOT * 0.02

if (TOT - REM >= 500) {
    document.write("<br/> Votre montant remisé étant supérieur à 500€, les frais de port vous sont offerts <br/> <br/> Le montant total est de : <br/>" + TOT + "€ <br/> <br/> Merci et à bientôt sur notre site");
                                }

            else if (PORT >= 6) {
                TOT = TOT + PORT
                document.write("Les frais de port sont de 2%, soit " + PORT + "€" + "<br/> <br/ >Le montant total est de : <br/>" + TOT + "€ <br/> <br/> Merci et à bientôt sur notre site");

                                 }
                         
                else {
                    TOT = TOT + 6
                    document.write("Les frais de port sont de 6€ <br/> <br/ >Le montant total est de : <br/>" + TOT + "€ <br/> <br/> Merci et à bientôt sur notre site");
                    }                               
                             }
    
if (PU == 0 || QTE == 0) {
    alert("La commande ne peut être effectuée \nIl faut au moins un article, et d'une valeur supérieure à 0€") 
              }

else {
    TotalCommande()
     }








