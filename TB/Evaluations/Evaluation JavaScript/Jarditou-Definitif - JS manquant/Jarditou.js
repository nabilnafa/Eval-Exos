// Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.
// Lorsqu'une erreur est détectée, l'utilisateur doit en être informé grâce à l'affichage d'un message sous le champ concerné.
// Le formulaire ne peut être envoyé que lorsque tout est bon.

// Caractères autorisés dans les champs du formulaire
var vnom    = new RegExp(/^[A-Za-z-ïÏîÎêÊâÂèÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ]+$/)
var vprenom = new RegExp(/^[A-Za-z-ïÏîÎêÊâÂèÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ]+$/)
var vdate   = new RegExp(/^(0?\d|[12]\d|3[01])-(0?\d|1[012])-((?:19|20)\d{2})$/)
var vcp     = new RegExp(/^[0-9]{5}$/)
var vmail   = new RegExp(/^[a-zA-Z0-9-_.]+@[a-zA-Z_]+?.[a-zA-Z]{2,4}$/)




function checkForm(form)
{
    // Vérification du Nom (span 1)
    if(form.lastName.value == "") {
        document.getElementById("1").style.color = "red";
        document.getElementById("1").innerHTML = "Veuillez renseigner votre nom";
        form.lastName.focus();
        return false;
    }
    if(!vnom.test(form.lastName.value)) {
        document.getElementById("1").style.color = "red";
        document.getElementById("1").innerHTML = "Certains caractères sont invalides";
        form.lastName.focus();
        return false;
    }

    // Vérification du prénom (span 2)
    if(form.firstName.value == "") {
        document.getElementById("2").style.color = "red";
        document.getElementById("2").innerHTML = "Veuillez renseigner votre prénom";
        form.firstName.focus();
        return false;
    }
    if(!vprenom.test(form.firstName.value)) {
        document.getElementById("2").style.color = "red";
        document.getElementById("2").innerHTML = "Certains caractères sont invalides";
        form.neutral.focus();
        return false;
    }


    // Vérification du sexe (span 3) *** INCORRECT *** empêche la poursuite du formulaire

    if(!document.querySelector("3").checked) {
        document.getElementById("3").style.color = "red";
        document.getElementById("3").innerHTML = "Veuillez remplir ce champ svp";
        form.neutral.focus();
        return false;
    }

    // Vérification de la date de naissance (span 4)   *** INCORRECT *** Il n'accepte aucune date

    if(form.birthDate.value == "") {
        document.getElementById("4").style.color = "red";
        document.getElementById("4").innerHTML = "Veuillez renseigner votre date de naissance";
        form.birthDate.focus();
        return false;
    }
    if(!vcp.test(form.birthDate.value)) {
        document.getElementById("4").style.color = "red";
        document.getElementById("4").innerHTML = "Date de naissance incorrecte";
        form.birthDate.focus();
        return false;
    }

    // Vérification du code postal (span 5)

    if(form.cp.value == "") {
        document.getElementById("5").style.color = "red";
        document.getElementById("5").innerHTML = "Veuillez renseigner votre code postal";
        form.cp.focus();
        return false;
    }
    if(!vcp.test(form.cp.value)) {
        document.getElementById("5").style.color = "red";
        document.getElementById("5").innerHTML = "Le code postal doit contenir 5 chiffres";
        form.cp.focus();
        return false;
    }

    // Vérification de l'adresse et de la ville inutiles
    // Le formulaire ne comporte pas d'asterisques à cet endroit


    // Vérification de l'adresse mail (span 6)

    if(form.userEmail.value == "") {
        document.getElementById("6").style.color = "red";
        document.getElementById("6").innerHTML = "Veuillez renseigner votre adresse mail";
        form.userEmail.focus();
        return false;
    }
    if(!vmail.test(form.userEmail.value)) {
        document.getElementById("6").style.color = "red";
        document.getElementById("6").innerHTML = "N'utilisez que des minuscules, majuscules ou accents s'il vous plait";
        form.userEmail.focus();
        return false;
    }

    // Vérification du sujet (span 7)  *** INCORRECT *** empêche la poursuite du formulaire



    // Vérification de la question (span 8)
    if(form.userQuestion.value == "") {
        document.getElementById("8").style.color = "red";
        document.getElementById("8").innerHTML = "Veuillez saisir votre question ou votre commentaire";
        form.userQuestion.focus();
        return false;
    }


    // Vérification du traitement informatique (span 9)
    if (form.userAgreement.checked === false) {
        document.getElementById("9").style.color = "red";
        document.getElementById("9").innerHTML = "Veuillez cocher cette case pour envoyer le formulaire";
        form.userAgreement.focus();
        return false;
    }
    return true;
}

