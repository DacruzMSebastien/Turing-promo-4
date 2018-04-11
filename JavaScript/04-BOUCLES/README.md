## JavaScript

### Les boucles
Les boucles sont une façon de répéter le même bloc de code plusieurs fois. 
Elles sont incroyablement utiles, et sont utilisées, par exemple, pour effectuer une action sur chaque élément dans un tableau (nous viendrons à des tableaux plus tard).

Les deux boucles les plus communes sont les boucles `for` et `while`. 
Elles combinent une condition et un bloc. 
Elles exécutent le bloc à plusieurs reprises jusqu'à ce que la logique de la condition ne soit plus `true` ou jusqu'à ce que vous les forcez à s'arrêter.

### while
Une boucle "while" répète un bloc de code tant qu'une condition est "true". 
Comme dans une instruction `if`, la condition se trouve entre parenthèses.

```javascript
var increment = 0;
while (increment <10) {
    console.log(increment);
    increment = increment + 1;
}
// increment est égal a 10
```
À la fin de la boucle le code continue son exécution à partir de l'accolade fermante ("}") de la fin du bloc.

### for
Une boucle for est similaire à une instruction `if`, mais elle combine entre les parenthèses trois informations séparées par des points­virgules : initialisation, condition et une expression finale.

L'initialisation crée une variable pour permettre de suivre la position dans la boucle dans laquelle vous êtes.
La condition permet à la boucle de se répéter. 
Elle ressemble à l'incrémentation dans la boucle `while`. 
L'expression finale est exécutée à la fin de chaque boucle.
Par convention on utilise plutot `i` au lieu de "incremente"

```javascript
for (var i = 0; i <10; i++) {
    console.log(i);
}
```
Cela nous retourne dans la console les numéros de `1` à `10` dans l'ordre. 
Par ailleurs, `i++`  est équivalent à `i = i + 1`.
