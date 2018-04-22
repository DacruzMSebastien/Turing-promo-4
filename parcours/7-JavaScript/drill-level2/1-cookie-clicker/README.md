# JS Cookie Clicker

- Cookie Clicker Officiel: <http://orteil.dashnet.org/cookieclicker/>
- CERN Particle Clicker: <https://particle-clicker.web.cern.ch/particle-clicker/>

![Chocolate Chip Cookies](chocolate_chip_cookies.jpg)

## Étape 1 : _structure de base_
Faire une structure de base *HTML* / *CSS* / *JS*. Dans le HTML, mettre un bouton avec un identifiant « clic » et une `div` avec un identifiant `affichage`, dont la valeur initiale sera `0`.

## Étape 2 : _préparer le JS_
Préparez les variables en tête du *JS* qui nous permettront de manipuler notre bouton et notre `div`. Nous aurons également besoin d'une variable `score` que nous initialiserons à `0`.

## Étape 3 : _augmenter le score_
Quand on clique sur le bouton, faire augmenter la variable `score` de `1`, puis afficher ce score dans la `div` affichage.

## Étape 4 : _préparation du multiplicateur_
Ajouter un bouton dont l'identifiant est `multiplier`. Créer un compteur de clics (dont la variable s'appellera `multiplicateur` et sera initialisée à `1`) sur ce bouton. La fonction associée au clic du multiplicateur s'appellera `augmenterMultiplicateur`.

## Étape 5 : _utilisation du multiplicateur_
Faire en sorte que l'augmentation du score via le clic du premier bouton ne soit plus de `1` mais de la valeur du multiplicateur. Par exemple, si j'ai cliqué une fois sur le bouton multiplicateur, chaque clic sur le premier bouton ajoutera désormais `2` au lieu de `1`.

## Étape 6 : _prix du multiplicateur_
Le multiplicateur vous permet de gagner du score plus rapidement. Ça ne devrait pas être gratuit ! Faites en sorte que cliquer sur le bouton multiplicateur diminue de `50` votre score.

## Étape 7 : _on ne fait pas crédit_
On ne peut pas faire crédit et on ne veut pas de score négatif. Pensez à mettre à jour l'affichage du score après l'achat !

## Étape 8 : _affichage du compteur_
Affichez le compteur de multiplicateur à l'intérieur du bouton. Par exemple, si compteur vaut `5`, il faut que le texte du bouton soit « Multiplicateur x5 ».

## Étape 9 : _augmentation du prix_
Acheter plein de multiplicateurs est trop facile. Essayez à partir de l'étape 6, vous comprendrez pourquoi il faudrait que plus on achète de multiplicateurs, plus ceux-ci soit chers.
Par exemple, le premier vaudrait `50`, le suivant `100`, le suivant `200`, etc.. Pas la peine de vous compliquer la vie, ne faites pas pleins de conditions. Trouvez une autre façon de faire évoluer le prix !

## Étape 10 : _affichage du prix_
Dans le texte du bouton, en plus du « x5 », ajouter le coût du prochain achat.

## Étape 11 : _autoclicker_
Nouvelle amélioration à acheter : Autoclick. Dès que vous avez un score de `200`, un clic est fait automatiquement chaque seconde. (`setInterval` est ton ami)

## Étape 12 : _achat d'autoclicker_
L'autoclicker ne sera plus automatique. Il faut dorénavant acheter l'autoclicker. Vous ajouterez un bouton avec l'id `autoclic`. Il coutera `500`. Une fois que l'autoclicker a été acheté, il faudra désactiver le bouton d'achat de l'autoclic.

## Étape 13 : _achat d'un bonus_
Désormais, on doit pouvoir acheter un bonus qui augmente le score de 200% à chaque clic pendant 30 secondes. C'est à dire que si à chaque clic, le score augmente de `3`, pendant les 30 secondes de bonus le score augmentera de `6` à chaque clic, au bout des 30 secondes le score augmentera à nouveau de `3` par clic.
Vous créerez le bouton « BONUS » avec l'id `bonus`, et le bonus coutera `5000`. Lorsque le bonus est acheté, le nombre de seconde s'affichera dans le bouton avec le décompte et le bouton devra etre désactivé pendant le temps du bonus. Quand le bonus est fini, le bouton est réactivé et retrouve son texte d'origine.

## Étape 14 : _désactiver les boutons (si j'ai pas le score pour acheter les améliorations)_
Faire en sorte que les boutons multiplicateur, autoclic et bonus ne soient clicables QUE si j'ai le score nécessaire pour les acheter.

## Étape 15 : _du CSS_
Que ce soit beau ! Pas d'images !
