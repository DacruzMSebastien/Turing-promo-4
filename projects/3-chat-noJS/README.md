# Un outil de *chat*, en php + mysql

Cet exercice a pour but de te préparer la suite de la formation: les bases de données relationnelles.

## Deadline: Mercredi prochain.

## Mission
Réalise un outil permettant à plusieurs personnes de communiquer à distance, par écrit.  
Autrement dit, une application de *chat*.

## Contraintes 

### 1. No javascript! **!Important**

Pour cet exercice, tu ne peux PAS utiliser de JavaScript (ce n'est que partie remise, tkt). Du coup, pour que la conversation soit toujours à jour, on va utiliser un fichier pour afficher la conversation (baptisé par exemple `conversation.php`) qui se recharge toutes les 10 secondes (via une balise meta html (google "html auto refresh" pour la trouver).
Ce fichier sera affiché dans une balise `iframe` (balise que tu mettras dans le fichier *index.php*). Une deuxième iframe en dessous contient le formulaire permettant d'ajouter un message dans le chat.

### 2. Messages stockés dans une table MySQL
Les messages seront stockés dans une table MySQL "messages" et les utilisateurs dans la table "users". 
À toi de définir les colonnes nécessaires pour réaliser l'expérience décrite dans le prototype.

## Fonctionnalités à implémenter:
1. "register": pouvoir se créer un compte utilisateur du Chat (un formulaire permettant de spécifier son email et son mot de passe). Lors de l'inscription, pas de validation par email, on est directement inscrit (pour autant que le formulaire d'inscription ait été correctement rempli.
2. "login"/"logout": pouvoir se connecter à son compte (email + mot de passe) et se déconnecter (logout) en utilisant **les sessions PHP**.
3. "message": une fois connecté, pouvoir publier des messages dans la conversation.
4. Si on n'est pas connecté, on peut juste lire les messages, mais pas publier. A la place du formulaire des messages, affiche une invitation à se connecter ou à s'inscrire.
5. Bien entendu, chaque traitement de formulaire fera l'objet d'une **sanitisation** et d'une **validation** préalable.

## Objectifs secondaires

Implémente des choses comme : 

1. Remplacer les smileys `:-)` `:-(` ... par des images emoji
1. Avatar pour chaque utilisateur
1. Ajouter une page de "profil" por chaque utilisateur
1. Soigner l'UX (donner un nom et une personnalité à ton outil via du CSS, en vue d'en faire un produit prêt à livrer) histoire de le mettre sur ton portfolio.
1. Pouvoir envoyer une image dans la conversation. 
1. Quand on met un lien qu'il soit automatiquement cliquable
1. Présence des utilisateurs


## UX
- Pour le *look 'n feel*, n'hésite pas à piocher une que tu aimes [parmi celles-ci](https://codepen.io/search/pens?q=chat&limit=all&type=type-pens). Récupère le code sur codepen et sers-toi en comme base.

## Objectifs
- Utiliser Git du **début** à la fin du développement.
- Utiliser PHP et HTML
- Utiliser une base de données mysql
- Voir l'authentification
- voir les sessions php
- voir les iframe html

## Remise
- nom du repository: `php-chat-db`
- Dans le readme.md de ton repo, indique l'url nous permettant de tester le Chat.

## Planning

1. (Papier + bic): Planifie et conçois ta solution en réalisant un schéma des écrans à créer: quels fichiers? Quelle DB? Que doit-il se passer? Réalise un inventaire des formulaires à créer, des fichiers. Mets de l'ordre dans ta tête.
2. Modélise la Base de données: quelle relation lie les 2 tables ? (Refais le parcours sql sur les jointures au besoin.)
2. Lis et comprends (expérimente au besoin) la balise `Iframe` (http://www.iframehtml.com/ )
3. Lis et comprends (expérimente au besoin) les sessions PHP ( ["php session tutorial"](http://bfy.tw/GvDJ))
3. Création de son repo et dossier de travail local
4. Fonctionnalité d'inscription (**subscribe**)
5. Fonctionnalité de Connexion / Déconnexion (**login**/**logout**)
6. Fonctionnalité d'ajout d'un message.
7. ( Objectifs secondaires )
8. Remise
