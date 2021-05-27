let employes = ["Juan", "Slim", "Johann", "Bud", "Christophe",
"Eugène", "Gaylord", "Guillaume"];

alert("Voici la liste des employés en poste aujourd'hui : \n" + employes);

let nom = prompt("Veuillez indiquer lequel d'entre eux est absent");
let idx = employes.indexOf(nom);

if (idx > -1) {
    employes.splice(idx, 1,); // Ici, 1 indique le nombre d'index à supprimer en partant de "nom"
alert("Merci !\n" + nom + " est absent aujourd'hui.\nLes employés présents sont \n" + employes);
}
else {
    alert("Cette presonne ne travaille pas aujoud'hui.\nVeuillez vérifier le nom et réactualiser la page")
}



