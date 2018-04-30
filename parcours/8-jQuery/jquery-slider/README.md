# Slider

Certains vont sans aucun doute se demander : _"qu'est-ce qu'un carrousel ?"_.  Un carrousel, c'est tout simplement un défilement d'images, le plus souvent présent sur l'index d'un site web.

## Objectifs

Vous devez réaliser vous-même un carrousel. Simple dans un premier temps, vous pourrez toujours l'améliorer par la suite si vous êtes motivé ! Ce carrousel, qu'on appellera également _slider_ assez couramment, devra simplement comporter quelques fonctions basiques :

* il devra posséder deux boutons, un pour afficher l'image précédente, l'autre pour afficher la suivante ;
* il saura défiler seul, c'est-à-dire que les images défileront d'elles-mêmes sans que l'on ait à intervenir ;
* il pourra être très flexible dans la mesure où il sera possible de mettre autant d'images que l'on souhaite.

## `setTimeout()`, ou répéter une fonction régulièrement

Une méthode native de **JavaScript** va vous être utile pour faire défiler automatiquement les images. Il s'agit de `setTimeout()`, qui prend deux arguments : le nom de la fonction à exécuter, et l'intervalle de temps (en millisecondes) à attendre avant de le faire. L'astuce, c'est de relancer la fonction à l'intérieur d'elle-même pour réaliser une boucle infinie :

```javascript
var maBoucle = function () {
    setTimeout(function () {
        alert('Bonjour !'); // affichera "Bonjour !" toutes les secondes
        maBoucle(); // relance la fonction
    }, 1000);
};

maBoucle(); // on oublie pas de lancer la fonction une première fois
```

Les images utilisées ici proviennent de [lorempixel.com](http://lorempixel.com/) et ne sont pas toutes libres de droit.

Vous avez maintenant toutes les clés pour réaliser ce carrousel !

N'oubliez pas de consulter la documentation de **jQuery** si vous en avez besoin, et de faire usage d'un `debugger` pour localiser un soucis dans votre code.

## Améliorations

Nous venons de vous présenter un carrousel très basique. La plupart de ceux que vous rencontrerez sur la toile sont beaucoup plus sophistiqués, mais rappelez-vous qu'ils fonctionnent presque tous de la même manière ! Que diriez-vous donc d'améliorer le votre ? Voici quelques pistes :

* le défilement d'images n'est pas très esthétique : à la place du système de display, essayez de mettre en place des effets d'animation sympatiques !
pour le moment, les contrôles sont très basiques : il n'est pas possible d'aller à une image précise en cliquant une seule fois. Que diriez-vous de réaliser une liste de boutons représentant chacun une diapositive ?
* de même, il est possible de faire des miniatures des images et de les afficher en dessous du carrousel pour faire une bien meilleure navigation !

Les possibilités sont infinies, on peut toujours trouver de nouvelles idées, qu'elles soient bonnes ou non.
