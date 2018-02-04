# PHP/ Les boucles (loops)

![Vaisselle](https://www.dropbox.com/s/yu51xxacsk4f8w8/Capture%20d%27%C3%A9cran%202017-05-03%2000.16.45.png?dl=1)


## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  
- [Conditions](php-conditions.md) 
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md) 
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md)    ← 
- [Fonctions](php-fonctions.md) 

## Introduction

Faire la vaisselle. *Beurk*. 

Laver une assiette? *No problemo*.  
Laver les 57 assiettes du banquet de la veille? *Euuuuuuuuh.... Demain, ok?*
 
Pour nous, développeuses et développeurs, la perspective de faire 57 fois la même chose représente ce qu'il y a de plus proche de la crucifixion (pardon, Jésus).

Les boucles sont là pour nous sauver.

Au lieu d'appeler 57 fois une fonction "`clean();`", nous pouvons simplement faire ceci:

```php
foreach( $assiettes as $assiette){
	trempe($assiette);
	frotte($assiette);
	mets_a_secher($assiette);
}
```
## Définition
Ce `foreach` est une structure logique appelée `boucle`. Une boucle permet de répéter une (ou plusieurs) opération(s) autant de fois que nécessaire.  
L'instruction se lit:  
> Pour chaque élément de l'array `$assiettes`, appelle-le `$assiette` et opère sur lui ces opérations: `trempe()`, `frotte()`, puis `mets_a_secher()`.

Voici un exemple pratique: imagine que tu reçoives une liste (un array) de noms dans un tableau` $names` et que tu doives t'assurer que la première lettre de ces noms soit bien en majuscule. Tu penses avec raison que la fonction PHP `ucfirst($nom);` t'aidera. Avec une boucle, c'est très simple.

```php
foreach ($names as $n){
	echo ucfirst($n);
}
```
L'instruction se lit:  
> Pour chaque élément du tableau` $name`, met la première lettre en majuscule puis affiche-là.

### Variation: avec l'index

Parfois on a besoin de savoir quelle rangée exactement est en train d'être manipulée. Voici la syntaxe nécessaire pour s'en sortir:

```php
foreach ($names as $index => $n){
	echo "Prénom numéro $index : ";
	echo ucfirst($n);
}
```

Cette syntaxe utilisant `=>` te rappelle quelque chose ? Les [tableaux associatifs](php-array.md) peut-être? Tout à fait! C'est logique, puisqu'une boucle permet notamment de traverser un tableau de part en part. Donc quand tu penses "tableau", pense "boucle", et inversément, car les deux vont très souvent ensemble. 

### Exercices
- Voici un array :
```php
$pronoms_personnels = array ('Je', 'Tu', 'Il/Elle','Nous', 'Vous', 'Elles/Ils');
``` 
- Construis une boucle qui affiche chaque élément de l'array à l'aide de `foreach`
- Ensuite, dans ta boucle, conjuge le verbe "coder" en fonction du pronom. (utilise une condition pour cela)

## Tu peux aussi boucler dans une chaîne de caractères
### construction While

Tu es Bart Simpson et tu as été puni: tu dois recopier 100 fois « Je ne dois pas regarder les mouches voler quand j'apprends le PHP. ».  
Avant, il fallait prendre son mal en patience et ça prenait des heuuuures… Maintenant, avec PHP, on va faire ça en un clin d'œil !


```php
$nombre_de_lignes = 1;

while ($nombre_de_lignes <= 100)
{
    echo $nombre_de_lignes . ': Je ne dois pas regarder les mouches voler quand j'apprends le PHP.<br />';
    $nombre_de_lignes++; // équivaut à écrire $nombre_de_lignes = $nombre_de_lignes +1;
}
?>
```
La boucle pose la condition : " TANT QUE `$nombre_de_lignes` est inférieur ou égal à 100, effectue ces opérations".
Dans cette boucle, il y a deux instructions :  
- le `echo`, qui permet d'afficher du texte en PHP. À noter qu'il y a une balise HTML<br />à la fin : cela permet d'aller à la ligne.  
- Ensuite, une instruction bizarre : `$nombre_de_lignes++;`  En fait, c'est une façon plus courte d'ajouter 1 à la variable. On appelle cela l'incrémentation (ce nom barbare signifie tout simplement que l'on a ajouté 1 à la variable).  Chaque fois qu'on fait une boucle, la valeur de la variable augmente : 1, 2, 3, 4… 99, 100… Dès que la variable atteint 101, on arrête la boucle. Et voilà, on a écrit 100 lignes en un clin d'œil.  
Si la punition avait été plus grosse, pas de problème ! Il aurait suffi de changer la condition (par exemple, mettre « TANT QUE c'est inférieur ou égal à 500 » pour l'écrire 500 fois).

### Construction for

```php
for ($nombre_de_lignes = 1; $nombre_de_lignes <= 100; $nombre_de_lignes++)
{
    echo 'Ceci est la ligne n°' . $nombre_de_lignes . '<br />';
}
```
Après le mot `for`, il y a des parenthèses qui contiennent trois éléments, séparés par des points-virgules `;`.

Décrivons chacun de ces éléments:

- Le premier sert à l'initialisation. C'est la valeur que l'on donne au départ à la variable (ici, elle vaut 1).  
- Le second, c'est la condition. Comme pour le while, tant que la condition est remplie, la boucle est réexécutée. Dès que la condition ne l'est plus, on en sort.  
- Enfin, le troisième c'est l'incrémentation, qui vous permet d'ajouter 1 à la variable à chaque tour de boucle.  


## Conclusion

Les boucles sont une structure logique permettant de répéter une ou plusieurs opérations autant de fois que nécessaire.  
`foreach`, `while`, `for` sont trois manières de faire des boucles. Exerce-toi pour comprendre comment chacune fonctionne.

## Exercices

- Ecris une boucle qui affiche les numéros de 1 à 120 à l'aide de ` while `  
- Ecris une boucle qui affiche les numéros de 1 à 120 à l'aide de ` for `  
- Crée un tableau contenant tous les prénoms des personnes composant ta classe. Affiche ces prénoms à l'aide d'une boucle.
- Crée un tableau contenant au moins 10 pays du monde.  Une fois fait, utilise une boucle pour générer du html correspondant à une selectbox permettant à un utilisateur d'indiquer son pays dans un formulaire html.
- A présent, modifie ton tableau contenant les pays pour qu'il soit un tableau associatif: la clef est le code ISO du pays, la valeur étant le nom du pays: par exemple: `$pays = array('BE'=>'Belgique');` au lieu de simplement `$pays = array('Belgique');`. Utilise la clef pour qu'elle devienne la valeur de la balise `option` dans ton html.










