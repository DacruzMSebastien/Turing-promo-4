# PHP/ Les tableaux

## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  
- [Conditions](php-conditions.md) 
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md) 
- [Tableaux (array)](php-array.md)   ←
- [Boucles](php-boucles.md) 
- [Fonctions](php-fonctions.md)

## Les tableaux

![Armoire](https://www.dropbox.com/s/ybomkz94bwzu2zo/armoire.png?dl=1)

Pour rappel, dans le chapitre sur les variables, nous avions identifié plusieurs types de variables:  
1. Les chaines de caractères (*string*, ex: `"Hello"`)  
2. les nombres entiers (*int*, ex: `11` )  
3. les nombres décimaux (*float*, ex: `3.141518`)  
4. les booléens (`true` ou `false`)  
5. rien (`null`)  

Les tableaux (`array` en anglais) sont le sixième (et dernier) type de variables. Ils sont un peu particuliers car, alors qu'une variable classique est composée d'un nom et d'une valeur, un tableau peut contenir plusieurs valeurs.

Les tableaux sont très utiles pour représenter des groupes, comme par exemple:  
- tous les pays du monde  
- les membres d'une famille  
- les composants d'un système  
- les ingrédients d'une recette  
Etc.  

**Analogie**  
Personnellement, les arrays me font penser à une armoire, car, si je déclare ceci:

```php
$pronoms_personnels = array( 'je' , 'tu' , 'il' , 'nous' , 'vous' , 'ils' );
```
PHP met ceci en mémoire:

```
Array
(
    [0] => je
    [1] => tu
    [2] => il
    [3] => nous
    [4] => vous
    [5] => ils
)
```
Les chiffres (0 à 5) ont été automatiquement ajoutés par PHP. Ce sont des **clefs** (en anglais *key*) qui nous permettent d' ensuite aller chercher **la valeur** se trouvant à l'étage correspondant de l'armoire.  

Note que le premier élément se trouve à l'étage 0 (et non à 1).

Exemple:

```php
echo $pronoms_personnels[2];
// Affiche "il"
```

## Comment créer un tableau ?

Tu dois déclarer un tableau avec la fonction `array()`.

```php 
$team = array(); 
```

Comme souvent en PHP, il existe une manière plus brève:

```php 
$team = []; 
```

Tu peux dès sa création, mettre des éléments à l'intérieur.

```php 
$team = [ 'Vincent Company', 'Eden Hazard', 'Manneken Pis' ]; 
```
Note que les "éléments" de l'array sont séparés par des virgules.

Tu aussi créer manuellement le tableau étage par étage :
```php
$team[0] = 'Vincent Company';
$team[1] = 'Eden Hazard';
$team[2] = 'Manneken Pis';
``` 

### Exercices

1. Voici un array:

```php
$pays = array( 'Belgique', 'France' , 'Allemagne', 'Pays-Bas', 'Ukraine' ); 
```
Que va retourner ceci ? 

```php
 echo $pays[2];
```

2. Crée un array représentant ta famille.
3. Affiche son contenu avec la fonction `print_r`
4. Crée un array décrivant tes plats préférés.
5. Affiche son contenu avec la fonction `print_r`
6. Crée un array listant tes films et séries préférés.
7. En utilisant cet array, affiche uniquement ton film/série préféré

### opérations courantes

#### Afficher
Comme tu l'as vu plus haut, pour "retrouver" l'information dans un array, on utilise les clefs dans des parenthèses carrées `[ ]` . 

```php
// Dans un array associatif : 
echo $person['firstname'];
echo $person['papa']['firstname']; // Retourne la valeur de la clef 'firstname' du sous-tableau 'papa' du tableau $person.
// Ou si l'array est numérique
 echo $pays[2]; // Retourne la 3ème clef du tableau $pays
 echo $person['papa']['hobbies'][1]; // retourne le 2ème hobby du papa de la $person.

```

#### Ajouter un élément

Il y a deux manières de faire.  
La manière longue:

```php
array_push($person['hobbies'], 'Football');
```

La manière courte:

```php
// Si une clef numérique te suffit;
$person['hobbies'][] = 'Football';

// Si tu veux que la clef soit associative:
$person['papa']['firstname'] = 'Georgio';
```



#### Remplacer la valeur d'une clef
Imagine que `$person['papa']['firstname'] = 'Georgio'; `

Pour changer son prénom, il suffit de l'écraser:

```php
$person['papa']['firstname'] = 'Georgio';
echo $person['papa']['firstname'];
$person['papa']['firstname'] = 'Sebastano';
echo '<br>';
echo $person['papa']['firstname']; // retourne "Sebastano"
```


## Tableaux associatifs

Jusqu'à présent, les tableaux que nous créons utilisent une clef numérique (autrement dit: un chiffre).

Les tableaux associatifs fonctionnent sur le même principe, sauf qu'au lieu de numéroter les étages, on va les **étiqueter en leur donnant à chacun un nom différent**.

Par exemple,  supposons que je veuille, dans un seul array, enregistrer les coordonnées de quelqu'un (nom, prénom, adresse, ville, etc.). Si l'array est numéroté, comment savoir que le n°0 est le nom, le n°1 le prénom, le n°2 l'adresse… ? C'est là que les tableaux associatifs deviennent utiles.

### Construire un tableau associatif

Pour en créer un, on utilisera la fonction `array` (ou sa version raccourcie `[]` ) comme tout à l'heure, mais on va mettre l'étiquette (la `clef`) devant chaque information :

```php 
$utilisateur = array (
    'prenom' => 'Juan',
    'nom' => 'Pablo',
    'adresse' => '3 Rue du Paradis',
    'ville' => 'Bruxelles'
    );
```
**Note 1**:  il n'y a ici qu'une seule instruction (un seul point-virgule). J'aurais pu tout mettre sur la même ligne, mais rien ne m'empêche de séparer ça sur plusieurs lignes pour que ce soit plus facile à lire.

**Note 2**: remarque qu'on écrit une flèche (`=>`) pour dire « associé à ». Par exemple, on dit « ville » associée à « Bruxelles ».

Du coup, pour afficher le contenu d'un étage, c'est plus intuitif: 

```php
echo $utilisateur['ville'];
```

#### Exercice
1. Décris-toi dans une tableau associatif: `$moi`. Utilise au moins deux valeurs de chaque type: texte (par exemple `prenom`), booléenne (par exemple `aime_le_foot`) et Int (par exemple: `age`). 

## Tableaux multi-dimensionnels

Tu l'as vu à l'exercice précédent: tu peux stocker des valeurs de type "texte", "int", "boolean" dans un tableau. Mais tu peux aussi stocker des valeurs sous forme de tableau! Ton tableau devient alors un **tableau multi-dimensionnel** (en anglais: *multi-dimensional array*).  

Imagine que tu doives également stocker tes hobby dans le tableau `$moi`. Cela donne ceci: 

```php
$moi = array(
	'naissance'	=> 1973 , 
	'prenom' 		=> 'Alexandre' ,
	'nom' 	  		=> 'Plennevaux' ,
	'hobbies' 	=> array()
);

echo '<pre>';
print_r($moi);
echo '</pre>';

```

### Exercices
1. Rajoute tes hobbies sous forme de tableau dans ton tableau `$moi`
2. Crée un deuxième tableau similaire au tien, qui décrive ton papa (ou une personne de ta famille): `$papa`.
3. Assure-toi d'y avoir également décrit ses hobbies
4. Ensuite, à ton tableau `$moi`, ajoute un élément dont la clef est `'papa'` et la valeur équivaut à `$papa`.
5. Affiche le contenu de `$moi` via la fonction `print_r()`. (Utilise la balises html `<pre>` pour rendre cela plus lisible).
6. Relis ton code pour t'assurer de comprendre ce qui se passe à chaque ligne.

## Manipuler des arrays

### Compter

 - Tu veux savoir combien de hobbies a ton père. Trouve la fonction PHP qui permette de **compter** le nombre d'éléments d'un tableau.  
 - Compte tes propres hobbies
 - Additionne les deux et affiche le résultat

### Ajouter
Un ami t'a fait découvrir les joies de la taxidermie. Trouve la bonne syntaxe pour ajouter le hobby "Taxidermie" à ton tableau de "hobbies".

### Remplacer  
Tu te disputes avec ton père et tu décides de changer de nom de famille.  
Ta contestation n'a d'autre objet que de faire chier le système et de faire parler de toi dans les médias. Tu choisis donc de porter le nom de Dieudonné.  
Comment mettre à jour ton tableau pour refléter ce changement de nom de famille?  

### Créer un tableau à partir de deux tableaux (ou plus)

Un jour, tu rencontres ton `$ame_soeur`.  
Décris-la sous forme d'un Tableau `$toi` .  
Quels seront le ou les hobbies que votre enfant aura?  

Il se trouve que tu as vu un documentaire à la télé dans lequel un spécialiste en génétique héréditaire, expliquait qu'il y a 2 possibilités:  
1. soit **l'intersection** (les hobby communs aux deux array),  
2. soit la **fusion** (tous les hobby de chaque array).   
 Devine le nom des 2 fonctions PHP correspondantes dans la documentation de PHP (indice: elles commencent toutes deux par `array_`) et teste leur syntaxe. Affiche le résultat de chacune via la fonction `print_r()`.

## Exercices

**Note:** Pour chacun de ces exercices, affiche le résultat via la fonction `print_r()` afin de vérifier que tu obtiens le bon résultat. (Et dans une balise html `<pre>` c'est encore mieux).  

- Crée un tableau` $web_development` contenant une clef "frontend" et une clef "backend". À chaque clef, associe un sous-tableau vide.
- ensuite, ajoute une ligne en dessous qui ajoute à la bonne clef la technologie suivante: "xhtml".
- ensuite, ajoute une ligne en dessous qui ajoute à la bonne clef la technologie suivante: "Ruby on Rails".
- ensuite, ajoute une ligne en dessous qui ajoute à la bonne clef la technologie suivante: "CSS".
- ensuite, ajoute une ligne en dessous qui ajoute à la bonne clef la technologie suivante: "Flash".
- ensuite, ajoute une ligne en dessous qui ajoute à la bonne clef la technologie suivante: "Javascript".
- ensuite, ajoute une ligne en dessous qui remplace la ligne contenant "xhtml" par "html".
- ensuite, ajoute une ligne en dessous qui efface la ligne contenant "Flash".






