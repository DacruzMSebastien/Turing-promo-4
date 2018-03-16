# Introduction au MVC

## Objectifs

- Comprendre l'[architecture MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) : Model - View - Controller.
- Créer un mini-site de 5 pages en utilisant une architecture MVC
- Pour constituer le contenu de ce mini-site, on va reproduire le site de [Didier Motte](https://didiermotte.be/).

Exercice à faire seul. 

## Planning

1. **Contenu** : Nous allons simplement reproduire la page d'acceuil et la card, une page de présentation, une page de contact et une page de stock. Il va donc falloir créer une maquette pour shématiser tout ça.

2. Réflexion sur **l'UX** : Nous allons avoir besoin d'une OnePage et d'un multi site. Le OnePage sera composé des informations élémentaire du site (C'est quoi cette entreprise, qui est la patron,... ) avec quelques éléments du stocks. (N'oubliez pas de mettre un boutton pour accéder au site multipage).

3. **Développement** du site multipage en utilisant une architecture MVC pour la gestion des pages  
	1. Comprendre le MVC [(lire ces slides en pdf)](./MVC.pdf),
	2. Gérer certains éléments répété avec les include PHP,
	3. Site responsive (framework) et design,
	4. L'url doit ressembler à (127.0.0.10:3000/index.php?action=contact)

Il faut un MVC :

- un dossier **controller** avec le routeur, celui qui va inclure les bons fichiers en fonction de l'URL
- un dossier **views** avec toutes les pages visuelles
- un fichier **index.php** qui inclut le contrôleur.
- un dossier **assets** avec toutes tes rescources.

```
index.php
L controller
	L router.php
L views
	L fichiers partiels, plein d'html
	L header.view.php
	L footer.view.php
	L ...
assets
	L css
	L js
	L img
```

## Un ptit coup de pouce ?

Voici un exemple d'application utilisant un MVC:
[Git d'un ancien apprenant de la promo 1](https://github.com/ModjoInc/12-MVC/tree/master/AppMVC)

