var n = parseInt(prompt("***Tables de mutlipilcation*** \nVeuillez saisir un nombre entier"))
var x = 0

function TableMultiplication(){

    document.write("La table de " + n + " est : <br/> <br/>") 
while (x <= 12) {
    document.write(n + " x " + x + " = " + (x*n) + "<br/>");
x++;
                }
                             }
    

if (isNaN(n)) {
    alert("Ceci n'est pas un chiffre") 
              }

else {
    TableMultiplication()
     }
