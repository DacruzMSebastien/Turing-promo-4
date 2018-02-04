# PHP

## Table des matières

- [Introduction](php-introduction.md)   ←
- [Variables](php-variables.md)
- [Conditions](php-conditions.md)
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md)
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md)
- [Fonctions](php-fonctions.md)


## PHP : "Hypertext Preprocessor"
Logiciel qui tourne du côté **Backend**, càd. au niveau du _serveur web_. (Le **Frontend** désigne à contrario ce qui se passe du côté _Client_ càd. le _navigateur_).

PHP permet au Serveur Web de "réfléchir avant de parler" et en informatique, "réfléchir" c'est calculer, càd, manipuler des informations et les retourner au Client (le navigateur) dans n'importe quel format (très souvent: du HTML, du XML, du JSON, voir du texte simple, du CSS, du javascript...).

## Pourquoi utiliser du php si cela retourne autre chose ?
Parce que cela vous permet de créer des pages de manière **dynamique** plutôt que **statique**.

Par exemple, imagine que tu doives créer une page web permettant de dire "Bonjour!" à chacun des quelque 7 milliards d'habitants vivant actuellement sur la planète.
Cela signifie que tu dois créer 7 milliards de pages html telles que celle-ci, accessibles à une adresse url du style: http://citizens.net/humans/jose-garcia.html

```HTML
<html>
<head>...</head>
<body><h1>Bonjour José Garcia!</h1></body>
</html>
```
...Cela te prendrait des années, non? Et en plus, tu ne serais pas arrivé(e) à la millième page qu'il te faudrait déjà en effacer (les décès) et en ajouter (les naissances)... Pas terrible.

Et si tu ne créais qu'un seul fichier (un "script php") à qui l'on envoie le nom de l'humain via l'adresse url et qui "crée" l' html dynamiquement?

L'adresse url deviendrait, par exemple,  http://citizens.net/humans/index.php?name=jose-garcia


```PHP
<html>
<head>...</head>
<body><h1>Bonjour <?php echo $_GET['nom']; ?>!</h1></body>
</html>
```

Il suffirait alors que chacun reçoive son URL personnalisé et voilà! Un monde un peu plus doux, un peu plus accueillant!

> In Code We Trust!
– Cedric S.


## Mise en pratique
1. Repère quelques URL trahissant une page web dynamique. En voici une :  `https://github.com/becodeorg/BXLCentral/issues/2`

1. À ton avis, quelle est la partie "importante" de l' URL pour le script PHP ? Pourrais-tu essayer de deviner comment le serveur va calculer la bonne réponse à retourner à cet URL?

## Installation

### Serveur de développement / de staging / de production
Quand on développe, on ne travaille pas directement sur le serveur hébergeant le site ou l'application car la moindre faute de frappe pourrait provoquer une erreur et "casser" le site, incommodant des milliers de personnes. Pas bien...

Pour éviter cela, on travaille sur son propre ordinateur, c'est plus facile et cela permet de tester sans gêner personne. Cela permet aussi de travailler sans connexion internet (dans le train par exemple). C'est ce qu'on appelle un _environnement de développement local_  ou simplement un _serveur de développement_. Le serveur final est appelé lui un _serveur de production_. C'est lui que l'on rend accessible à tout le monde.
Il t'arrivera aussi de travailler avec un _environnement de staging_ présentant du code à faire valider avant sa mise en production.

### Installer un serveur de développement local
Il y a énormément de manière de faire cela, mais pour ces premiers exercices, il nous faut juste avoir un serveur permettant de jouer avec du PHP.
Cela tombe bien, PHP inclut un petit serveur de développement local. Il te suffit donc d'installer PHP sur ta machine et c'est fait!

Allons chez nous, dans le terminal.

#### 1. Instalation:

` sudo apt install apache2 php mysql-server libapache2-mod-php php-mysql ` 

n'oublie pas d'installer xampp 

` sudo chmod 755 xampp-linux-*-installer.run `

1. Pour lancer le serveur, il suffit de taper ceci dans le Terminal: 

 ``` cd opt/jenesaisplus/apache2 stop ``` 
 ``` cd opt/jenesaisplus/mysql stop ``` 
 ``` cd etc/xampp/xampp start ```

2. Pour créer ton premier fichier php, il te faudra aller dans le dossier htacess et le chmoder comme un bourain en 777 et par la suite tu pourras aller créer un dossier nomé comme ton projet et y mettre un index.php

#### 2. A présent, ouvre ton navigateur à l'adresse http://localhost:80/tondossier

Tu devrais voir le sympathique message "Hello!" que tu t'es adressé. Tu viens de créer ton premier script en PHP. Fais-toi un gros câlin, tu l'as bien mérité.

![Giphy](http://media1.giphy.com/media/35gNg6o2HYjSg/giphy.gif)

### Exercices

- Prends quelques minutes et joue avec ton fichier index.php. Mets-y une image.
- Crée une deuxième page dans le même dossier (`cats.php`) et ajoute un peu de contenu et surtout un lien sur chacune des deux pages permettant de passer de l'une à l'autre.
- Fait? Bravo, tu viens de créer ton premier site internet!
Voici un chaton pour fêter cela.

![Giphy](http://media0.giphy.com/media/nsMPhWK6bfxHq/giphy.gif)


Rendez-vous à la prochaine leçon: [Variables et Conditions](./php-variables.md).


