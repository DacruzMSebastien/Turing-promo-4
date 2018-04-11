## JavaScript

### Les fonctions
Les fonctions sont des blocs de code réutilisables qui effectuent une tâche spécifique. 
Pour exécuter le code dans une fonction, vous l'appelez tout simplement par son **nom**. 
Une fonction peut recevoir des arguments, et une fonction peut retourner une valeur.
Vous pouvez déclarer une fonction en tant que valeur d'une variable. 
Vous exécuterez cette fonction en utilisant le nom de sa variable et une paire de parenthèses. Cela s'appelle aussi appeler la fonction.

```
faireQuelqueChose();
findAnInterestingThing();
```

Pour créer une fonction, utilisez le mot clé  function.
Vous pouvez ensuite lister les arguments entre les parenthèses. 
Pour finir, écrivez un bloc qui contient le code de la fonction. 
Voici une fonction qui ajoute deux nombres:

```
var add = function (a, b) {
    return a + b;
}
```

"a" et "b" sont les arguments de la fonction, et la valeur qu'elle renvoie est signifiée par le mot clé `return`. 
Le mot­clé  return  arrête également l'exécution du code dans la fonction. 
Après le `return`, rien ne sera exécuté.

```
var result = add(1, 2); 
-> result est égal a 3

````
Cet appel ajoute les arguments `1` et `2`, qui à l'intérieur de la fonction `add`, seront enregistrées dans les variables `a` et `b` .






