## JavaScript

### Tableaux
Les tableaux sont des listes de tout type de données, y compris d'autres tableaux. 
Chaque élément du tableau a un indice. 
Ce nombre permet de récupérer un élément du tableau.
Les indices commencent à `0`. 
Le premier élément d’un tableau a l'indice `0`. 

Pour les éléments suivants ont augmente l’indice de façon incrémentale, de sorte que le dernier élément du tableau a un indice inférieur à la longueur du tableau.

Dans JavaScript, vous créez un tableau en utilisant des crochets :

```
let emptyArray = []; // anciennement : new Array()
let shoppingList = ["lait", "pain", "haricots"];
```

Vous récupérez un élément spécifique d'un tableau en utilisant son indice dans les crochets :
```
ShoppingList[0];
­> lait
```
Il est également possible de définir la valeur d’un index en particulier, en utilisant à nouveau la syntaxe de crochet:
```
shoppingList[1] = "cookies";
// ShoppingList est maintenant ['lait', 'cookies', 'haricots']
```
Vous pouvez trouver le nombre d'éléments dans le tableau à l'aide de sa propriété `length` :
```
shoppingList.length;
­> 3
```
Vous pouvez utiliser les méthodes `push"` et `pop` pour ajouter et supprimer des éléments de la fin du tableau:
```
shoppingList.push('new car');
// shoppingList est maintenant ['Milk', 'pain', 'haricots', 'new car']
shoppingList.pop();
// shoppingList est de retour à ['Milk', 'pain', 'haricots']
```
Voici un exemple où on ajoute des éléments dans un tableau. 
On fait une itération sur chaque élément du tableau, en passant chaque nom dans une fonction appelée helloFrom. 
`helloFrom` renvoie une chaîne avec une salutation: `Bonjour de` puis le nom de la personne.

```
let helloFrom = function (personName) {
    return "Bonjour de " + personName;
}
let people = ["Tom", "Yoda", "Ron"];
people.push("Bob", "Dr Mal");
for (let i = 0; i < people.Length; i++) {
    let greeting = helloFrom(people[i]);
    console.log(greeting);
}
```