## JavaScript

### La logique
La comparaison de valeurs est une partie très importante de la programmation.
Elle permet de prendre des décisions dans le code. 
Lorsque l'on compare un résultat qu'il soit **vrai** ou **faux**, nous travaillons avec des données appelées booléennes.

Comme en mathématique, il y a des ensembles d'opérateurs qui travaillent sur les booléens. 
Ils sont utilisés pour comparer deux valeurs, à gauche et à droite de l'opérateur, pour produire une valeur booléenne.
Les comparaisons suivantes sont effectuées dans la console. 
Le résultat que nous obtenons de chaque ligne sera vrai ou faux. 
Ce sont des booléens.

### Égalité
Pour savoir quand deux valeurs sont égales, on utilise l'opérateur `==`.
```
15,234 == 15,234
­> true
```
Nous pouvons également déterminer si deux valeurs ne sont pas égales en utilisant l'opérateur `!=`.
```
15,234 != 18,4545
­> true
```
Il est important de savoir que les chaînes contenant un nombre et un nombre réel ne sont pas égaux.
```
'10' == 10
­> false
```

### Supériorité et infériorité
La comparaison de deux nombres est utile pour déterminer par exemple lequel des deux est plus grand ou plus petit. 
Ce premier exemple est une comparaison de `10` et `5` pour déterminer si `10` est plus grand. On utilise l'opérateur `>`.
```
10 > 5
­> true
```
Ensuite, nous utilisons l'opérateur `<` pour déterminer si la valeur gauche est inférieure à la valeur droite.
```
20,4 < 20,2
-> false
```
Cet exemple retourne false, parce que `20,4` n'est pas un nombre inférieur à `20,2`.

### Comparaisons combinées
La combinaison d'une comparaison d'égalité peut être effectuée avec l'opérateur le plus grand ou égal à ( ">=” ) et avec l'opérateur inférieur ou égal ("<=").
```
10 >= 10 
-> true

10 <= 5 
-> false
```
### Conditionnelle
La logique est utilisée pour prendre des décisions dans le code. 
Le choix d'exécuter une partie de code ou non dépend des comparaisons effectuées. 
Cela nécessite l'utilisation de ce qu'on appelle une conditionnelle.
Il y a quelques conditionnelles différentes que vous pourriez utiliser, mais nous allons nous concentrer uniquement sur celle utilisée le plus souvent: `if`.

### If
C'est très simple. Si une certaine logique est `true`, alors on exécute un bloc de code.
Vous pouvez également fournir du code à exécuter si la condition n'est pas `true`.
Ces formes sont appelées `if` et `else`, comme vous le voyez ci­dessous.
La plus simple déclaration de `if` ressemble à ceci:
```
if ( 10 > 5) {
    // Exécutez le code ici
}
```
Le code entre les accolades `{` et `}` est appelé un bloc, et celui­ci est liée à l'instruction `if`. Il est lancé uniquement si la condition entre les parenthèses est `true`.
Le nombre `10` est en effet supérieur à `5`, donc le code entre les accolades va être exécuté.
Les doubles barres obliques ("//") indiquent un commentaire. 
Cela signifie que tout ce qui suit les barres jusqu'à la fin de la ligne est ignoré par le navigateur.

### Else
La forme de la déclaration `if` et `else` est utilisée pour exécuter une alternative au morceau de code si la condition n'est pas `true`. Ici le code dans le bloc `if` ci­dessous sera ignoré, le code dans le bloc `else` sera exécuté.
```
if (43 < 2) {
	// Exécutez le code ici
} else {
	// Exécutez un autre morceau de code
}
```
