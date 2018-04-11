## JavaScript

### Math Object
L'objet Math est un objet natif dont les méthodes et propriétés permettent l'utilisation de constantes et fonctions mathématiques. Cet objet n'est pas une fonction.

Description
Contrairement aux autres objets globaux, Math n'est pas un constructeur. Toutes les propriétés et les méthodes de Math sont statiques.

Pour accéder à la constante PI, on utilise `Math.PI`.
Pour accéder à la fonction sinus, on utilise `Math.sin(x)` où x est l'argument de cette méthode.

Les constantes sont définies avec la précision des nombres réels en JavaScript.

Syntax
```js
var x = Math.PI;            // Returns PI
var y = Math.sqrt(16);      // Returns the square root of 16
```

### Math Object Methods
Method	Description
```js
Math.ceil(x)	//Returns the value of x rounded up to its nearest integer
Math.floor(x)	//Returns the value of x rounded down to its nearest integer
Math.max(x, y, z, ...)	//Returns the number with the highest value
Math.min(x, y, z, ...)	//Returns the number with the lowest value
Math.random()	//Returns a random number between 0 and 1
Math.round(x)	//Returns the value of x rounded to its nearest integer
```

# Transformation
`parseFloat()`
`parseInt()`
