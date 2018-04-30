# Formulaire interactif

L'objectif est de réaliser un formulaire interactif que l'on animera grâce à **jQuery**. Ce sera un formulaire est très basique, avec quelques champs qui verront leur style **CSS** changer suivant l'action de l'utilisateur. L'objectif est de vérifier les informations entrées : nombre de caractères, vérifier que la confirmation du mot de passe est identique à celui-ci, vérifier si tous les champs sont remplis, etc..

## Objectifs

Ce formulaire contient quatre champs :

* un champ `text` pour le pseudonyme ;
* un champ `password` pour le mot de passe ;
* un deuxième champ `password` pour la confirmation du mot de passe ;
* et un dernier champ `text` pour l'adresse e-mail.

Deux boutons permettront respectivement d'envoyer les données, et de vider les champs. Pas de langage serveur pour cet exercice : tout devra se dérouler côté client.

Vous devrez vous assurer que l'utilisateur rentre les bonnes infos, de la bonne manière :

* tous les champs devront contenir au moins 5 caractères ;
* le mot de passe et la confirmation devront être identiques ;
* si les champs sont vides lors de l'envoi, on affiche un message d'erreur.

Pour indiquer l'erreur au visiteur, il vous suffira d'utiliser **CSS** : une bordure de champ de couleur rouge ferait par exemple l'affaire. De la même manière, si le champ est bon, vous pourriez changer la couleur du champ adéquat en vert.

N'oubliez pas que vous devez traiter tous les cas, car il ne faut jamais faire confiance à l'utilisateur.

Nous vous donnons un squelette pour démarrer ! Il contient le code **HTML**, le code **CSS**, et intégre **Bootstrap** et **jQuery** !

## Améliorations

Ce formulaire peut encore être amélioré, dans le sens où vous pourriez restreindre encore plus les possibilités de l'utilisateur, en interdisant de dépasser un certain nombre de caractères dans le pseudo, par exemple. De même, le style est pour l'instant ultra basique, rien ne vous empêche de le sophistiquer, pour que l'expérience utilisateur soit poussée à son maximum.

Quelques améliorations au niveau de la sécurité pourraient être apportées :

* vous pourriez vérifier le format de l'adresse e-mail, grâce à une expression régulière, faite avec l'objet `Regex` de **JavaScript** ;
* vous auriez pu également vérifier que le mot de passe était sûr, en faisant par exemple un mini-indicateur de sûreté qui se baserait sur le nombre de caractères, leur diversité, ...
* il est possible d'afficher un message d'aide pour chaque champ, lorsque l'utilisateur tape du texte dans ceux-ci ;
