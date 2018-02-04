# PHP: Les conditions

## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  
- [Conditions](php-conditions.md)  ←  
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md)
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md) 
- [Fonctions](php-fonctions.md)



![Rail Switch](https://pmcdn.priceminister.com/photo/Aiguillage-train-miniature-1097270594_L.jpg)

## Les conditions

Le monde dans lequel nous vivons est un système dynamique, en évolution permanente.  
Parfois, il fait jour, parfois il fait nuit. Parfois la personne en face de nous est un homme, parfois c'est une femme. Parfois il fait chaud, parfois il fait froid. Etc.  
Nous, humains, avons appris que s'il fait froid, on a intérêt à mettre une veste. Si par contre c'est la canicule, on se contentera d'un T-shirt. Pas vrai ?  
Et bien, dans notre inconscient, nous avons intégré dans notre manière de prendre des décisions la possibilité que les choses soient variables. Nous devons alors "tester" des hypothèses ("fait-il chaud dehors?"), et si elles se vérifient (si elles sont vraies (en anglais _True_ )) alors on fait ceci ("mettre un T-shirt"), sinon, on fait cela ("mettre un pull").  

En programmation, on appelle ces hypothèses des **conditions**. La forme la plus usitée est le `if/else`.

```php
if( condition ) {
   // code à n'exécuter que si la condition est TRUE
  echo "La condition est vraie.";
 } else {
   // code à n'exécuter que si la condition est FALSE
   echo "La condition est fausse.";
 }
```
### Opérateurs

Pour exprimer tes conditions, tu as à ta disposition plusieurs types d'opérateur:

`==` : égal à  
`!=` : différent de  
`>` : plus grand que  
`<` : plus petit que  
`>=` : plus grand ou égal à  
`<=` : plus petit ou égal à  

Reprenons notre exemple de la météo. Cela donnerait ceci, en code PHP.

```php
if( $temperature > 21 ) {
  // code à exécuter si la condition est TRUE
  $vetement_du_jour = "T-shirt";
 } else {
   // code à exécuter si la condition est FALSE
   $vetement_du_jour = "Pull-over";
 }
```

#### Exercice:
- Change la condition pour qu'elle devienne: "si la température est plus grande ou égale à 15 degrés".

## Combiner des conditions

### condition1 ET / OU condition2 
Tu peux vérifier une "condition multiple" (plusieurs conditions combinées), en utilisant les mots-clef `AND` ("et") ou `OR` ("ou").

```php
if ( $age <= 12 AND $langue == "français" ) { ...
```

## Conditions hiérarchiques 
Tu peux également imbriquer des conditions les unes dans les autres. Attention à bien placer tes accolades. 
**Astuce** Utilise l'indentation du code pour t'aider à t'y retrouver visuellement.

```php
if ($genre == 'femme'){

	// Ici, du code à exécuter si le genre est "femme"

	if ( $age <= 12 and $langue == "français" ) {
		// Ici, du code à exécuter si le genre est "femme",  que l'âge est inférieur à 13 et que la langue est "français"
		...
	} else{
		// Ici, du code à exécuter si le genre est "femme",  et que l'âge est supérieur à 13 ou que la langue n'est pas "français"
		...
	}

} else {
	// Ici, du code à exécuter si le genre n'est pas "femme"

	if ( $age <= 12 and $langue == "français" ) {
		// Ici, du code à exécuter si le genre n'est pas "femme", que l'âge est inférieur à 13 et que la langue est "français"
		...
	}
}

```

### Entraîne-toi
Familiarise toi à l'écriture de conditions grâce à cette [série d'exercices](php-exercices-conditions.md).  
Lorsque tu as terminé, examine le cas pratique suivant.

## Bonne pratique: le PHP avant HTML
Comme tu l'as vu, on peut mélanger du html et du php dans un fichier `.php`. Cela étant, il vaut mieux mettre le plus possible de code PHP AVANT de commencer à faire du html, càd, de retourner la réponse du serveur au navigateur.

## Cas pratique 1: Générateur d'excuses
Les parents doivent parfois inventer des excuses pour leurs enfants. [Réalise un petit formulaire](./php-exercice-generateur-excuses.md) qui permette de proposer des excuses pré-définies. 

## Cas pratique 2: validation d'un champ de formulaire

Quand on construit un script qui doit traiter un formulaire, on doit effectuer des vérifications, dans l'hypothèse d'une erreur humaine ou d'une tentative de hacking.
Par exemple, on doit vérifier qu'une variable obligatoire a bien été remplie. On pourrait l'exprimer ainsi: "Si le nombre de caractères contenus dans l'email est inférieur à 1"

```PHP
$fullname = $_GET['fullname'];

if ( strlen($fullname) == 0 ){
  echo "Vous avez oublié d'indiquer votre nom.";
}
```

As-tu deviné ce que fait la fonction `strlen()` ?

Note qu'il existe d'autres manières d'exprimer cette condition "n'est pas vide". Explore les fonctions PHP suivantes en allant voir la [documentation php](http://php.net/manual/fr/index.php):  
- ` empty() `  
- `filter_var()`  

![Giphy](https://media0.giphy.com/media/gpDtMjkONKp7a/giphy.gif)
