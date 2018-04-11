## JavaScript

### Les variables et les données
Stocker des données est très important quant on écrit du code. Heureusement, JavaScript peut le faire !
Alors demandons à l'utilisateur son prénom.

```js
var prenom = prompt('Bonjour mon cher ami puis­je avoir ton prénom ?');
```
Une petite popup va apparaître et il nous sera demandé courtoisement notre prénom. Tapez le votre et cliquez sur OK.
Le prénom que vous avez tapé est maintenant sauvé. il peut être référé en tant que `prenom`. 
Vous pouvez récupérer ce que vous avez entré en tapant le mot  prenom  dans la console. Vous devrez voir votre prénom apparaître en retour juste en dessous !
Vous avez créé une variable, Excitant non ?

### Les variables
Penser une variable comme un tiroir sur lequel on a écrit un nom. 
Vous pouvez venir quand vous voulez ouvrir ce tiroir et regarder ce qu'il y a dedans. Si on a plusieurs tiroirs il est plus facile de retrouver leur contenu grâce à l'étiquette qu'on a collé dessus.

Quand on tape le nom de la variable dans la console, on dit au navigateur : regarde dans tout tes tiroirs celui qui a ce nom et donne moi ce qu'il y a dedans. 
La valeur peut être à peu près n'importe quoi. Dans `prenom` nous avons stocké des lettres, aussi nommées : chaîne de caractères. Nous pouvons également stocker des numéros et beaucoup d'autres types de données.
Une variable a donc un nom et une valeur.

Ils sont les meilleurs moyens de mémoriser des données et vous allez beaucoup les utiliser. Il y a deux parties à la création d'une variable ; la déclaration et l'initialisation. 
Une fois la variable créée, on peut lui assigner sa valeur.

### Déclaration
La déclaration est le fait de déclarer qu'une variable existe. Pour retourner à la métaphore du tiroir, c'est comme choisir un tiroir vide dans une grande maison et mettre une étiquette dessus.
Pour déclarer une variable, utilisez le mot clé `var` comme ceci :

```js
var prenom;
var age;
```
Vous avez remarqué le point­virgule ? `;` ? 
Presque toutes les lignes en JavaScript finissent avec un point­virgule.

### Initialisation
L'initialisation est le fait de donner à une variable sa valeur pour la première fois. La valeur peut changer plus tard, mais elle est initialisée qu'une seule fois.
On initialise une variable en utilisant le signe `=`. Vous pouvez le lire comme ceci: la valeur de la variable sur la gauche devrait être les données qui se trouve sur sa droite.

`var nom = "Tom";`

"Tom" est une chaîne de caractère, une collection de lettres. Une chaîne de caractères est entouré de double ou de simples guillemets.

`var age = 20;`
La valeur 20 n'est qu'un chiffre,on ne met donc pas de guillemets.

### Assignation
Comme dit auparavant vous pouvez mettre à jour la valeur d'une variable autant de fois que vous le voulez. 
Ça s'appelle l'assignation, et ça ressemble beaucoup à l'initialisation. 
Vous utilisez encore le signe égal, mais on n'a plus besoin du mot­clé var parce que on a déjà déclaré la variable.

Comme ceci:

```js
nom = "Andy";
age = 43;
```
Faites ceci seulement si vous avez déclaré `nom` et `age` en utilisant le mot var auparavant. 

### Faire des mathématiques
Les variables peuvent être utilisées pour stocker des chaînes de caractères et aussi des nombres (entre autres). Nous allons nous concentrer ici sur les nombres.

Combien de fruits ?
Dans la console, nous allons créer deux variables. 
L'une va être le nombre de pommes que nous avons, l'autre va être le nombre de poires.

```js
var apples = 5,
pears = 10;
```
Ceci crée des variables. 
Mais il n'y a qu'un seul mot­clé var? 
Oui, c'est un raccourci pour déclarer et initialiser plusieurs variables en même temps. 
En utilisant le mot­clé var une seule fois et en séparant les nouvelles variables avec une virgule on peut gagner du temps.
Maintenant nous allons utiliser ces deux variables pour savoir combien il y a de fruits au total.

```js
var piecesOfFruit = apples + pears;
```
Voilà du nouveau! Nous demandons au navigateur de trouver la somme à droite avant d'assigner le résultat à `piecesOfFruit`. 
Nous n'additionnons pas le nom des variables, nous additionnons les valeurs des variables. Le navigateur le sait. 
Quant il voit des variables comme ceci, il comprend que vous voulez faire quelque chose avec les valeurs. Il va chercher la valeur de chaque variable et en faire la somme.
La somme est appelé `piecesOfFruit` et non "pieces of fruit parce que le nom d'une variable ne peut contenir d'espaces.

Vous avez aussi remarqué que chaque début de mot est en majuscules. 
Il s'agit d'une convention appelée "écriture en dos de chameau"(camel case). Vous pouvez appeler une variable comme vous le voulez mais `pIeCEsOFfRuiT` est plutôt moche non?
astuce : Vous allez passer plus de temps à lire votre code qu'à l'écrire. 
Il est donc très important de s'assurer qu'il sera facile à lire.

### Séparation des fruits
Disons que vous voulez partagez vos fruits entre trois personnes. 
Combien de fruits chaque personne va recevoir ?
```
var piecesForEachPerson = piecesOfFruit / 3;
```
Quelle chance que nous ayons JavaScript. 
Autrement on aurait besoin d'une calculatrice.
On utilise un `/` pour indiquer la division : diviser la variable à gauche par le nombre à droite.

### Priorités et opérateurs
Pour calculer des sommes, vous pouvez utiliser différents symboles: ajouter `+`, soustraire `­`, division `/` et multiplier `*`.
Les symboles mathématiques sont appelés opérateurs. Vous devez savoir que, comme sur une calculatrice, les symboles sont exécutés dans un ordre particulier. 
Cet ordre est appelé la priorité des opérateurs. Les opérations entre parenthèses sont calculées en premier, ensuite les multiplications et les divisions, pour finir par les additions et les soustractions.

Voici un exemple, pas à pas :
```
(10 + 2) / 2 + 4 * 2
```

La partie entre parenthèses est travaillée en premier. Donc, cela devient ...
```
12 / 2 + 4 * 2
```

Ce qui correspond à...
```
6 + 4 * 2
```

Si plusieurs opérations sont du même ordre de priorité, elles sont évaluées de gauche à droite.
La multiplication est une priorité plus élevée de sorte qu'elle est exécutée en premier. 
Cela correspond à ...
```
6 + 8
```

Ce qui donne la valeur finale :
```
­> 14
```

Ouf !


Déclarations ES6

- var 
- let
- const 
- class

...