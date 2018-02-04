# PHP/ Les fonctions

![Robot presse-oranges](http://ecx.images-amazon.com/images/I/51g-YUKLUoL.jpg)


## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  
- [Conditions](php-conditions.md) 
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md) 
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md)  
- [Fonctions](php-fonctions.md)   ←  

## Introduction

En programmation, on dit souvent qu'il faut faire du DRY: 
> " Don't Repeat Yourself ".

Considère ce code:

```php 

$name = "Maurice";
echo "<p>Bonjour $name!</p>";
echo '<hr>';
$name = "Alice";
echo "<p>Bonjour $name!</p>";
echo '<hr>';
$name = "Jésus";
echo "<p>Bonjour $name!</p>";
echo '<hr>';
$name = "Judas";
echo "<p>Bonjour $name!</p>";
echo '<hr>';
// OUTPUT
Bonjour Maurice!
_______________________________
Bonjour Alice!
_______________________________
Bonjour Jésus!
_______________________________
Bonjour Judas!
```

Cela fonctionne, mais est-ce que c'est DRY? Non: on répète 4 fois le même code. Le jour où l'on devra modifier ce programme pour une raison ou l'autre, il faudra le modifier à 4 endroits, augmentant d'autant de fois le risque d'introduire un bug. Bonjour tristesse.

Compare avec ce script réalisant exactement la même chose, mais dont le code utilise une fonction.

```php

// Déclaration de la fonction
function dis_bonjour($nom){
	echo "<p>Bonjour $nom!</p>";
	echo '<hr>';
}

// appels de la fonction 
dis_bonjour("Maurice")
dis_bonjour("Alice");
dis_bonjour("Jésus");
dis_bonjour("Judas");

// OUTPUT

Bonjour Maurice!
_______________________________
Bonjour Alice!
_______________________________
Bonjour Jésus!
_______________________________
Bonjour Judas!
_______________________________
```

Comme tu le vois, le code semble beaucoup plus propre. Et si d'aventure, un designer décide un jour que la balise  doit (par exemple) avoir une classe html "texte-rouge", il suffira de modifier la fonction et tous les endroits où la fonction est utilisée bénéficieront automatiquement de la mise à jour.
> Information is power. – Anonymous.

## Définition 
Les **fonctions** sont un peu comme des robots « intelligents » qui s'adaptent en fonction de ce que tu veux faire et qui automatisent grandement la plupart des tâches courantes. Elles prennent souvent (mais pas forcément) un ou plusieurs *input* (appelés les **arguments** de la fonction) qu'elles transforment et puis retournent (via la fonction `return`). Et oui, tu peux utiliser des fonctions dans les fonctions!

C'est un peu comme une machine à fabriquer du jus d'oranges: en *input* tu mets les oranges fraîches. En *output* tu récupères le jus d'orange (et les pelures).  
![Robot presse-oranges](http://ecx.images-amazon.com/images/I/51g-YUKLUoL.jpg)

Comme dans l'exemple ci-dessus, tu peux créer tes propres fonctions. Tu peux également utiliser [les nombreuses fonctions fournies par PHP](http://php.net/manual/fr/funcref.php).  

D'ailleurs, tu en utilises déjà quelques unes:  
- `array()` : fonction qui sert à créer une variable de type `array`.  

```php 
$team = array('Elvis', 'Johnny');   
```  
Ici, les arguments `'Elvis', 'Johnny'` à l'entrée vont devenir à la sortie (capturée dans la variable `$team`) les éléments qui vont constituer l'array.
 
- `print_r($array)` : sert à afficher le contenu d'un array.  
- `die("message")` : sert à arrêter l'exécution du script après avoir affiché le message indiqué en argument de la fonction. 
- `echo("texte à afficher");` : sert à afficher les arguments. Cette fonction ne nécessite pas les parenthèses. 
- `phpinfo();` affiche la configuration de PHP sur ton serveur.
- `date('d M Y')` pour récupérer la date courante.

### Exemple concret: transformer un bout de texte

La fonction `str_shuffle()` (lire : "**shuffle** **str**ing") permet de mélanger les caractères d'une chaîne (autrement dit: un bout de texte).

```php

$chaine = 'Cette chaîne va être mélangée !';
$chaine = str_shuffle($chaine);
 
echo $chaine;
```

Voilà. Ce n'est pas forcément très utile, mais c'est [marrant](http://www.my-os.net/blog/index.php?2006/05/20/410-ordre-de-lecture):

![scramble text](http://www.my-os.net/blog/images/2006%20mai/lecture.jpg)

## Syntaxe

L'usage d'une fonction se fait en deux temps :  
**Temps 1. Créer la fonction** (on dit: "définir" ou "déclarer" une fonction). Voici la syntaxe à respecter pour déclarer une fonction.  

```php 
function nom_de_la_fonction( $argument1, $argument2,...){
	//	une série d'opérations manipulant les arguments
}
```  

Note que la série de commandes est entre deux accolades: `{` pour ouvrir le bloc de code et `}` pour le refermer.  Typiquement (mais pas forcément) une fonction va **ret**o**urn**er le résultat (le jus d'orange).  

Voici une fonction qui me permettrait de sanitizer un input:

```php 
function sanitize( $input ){
	//	une série d'opérations manipulant les arguments
	return strip_tags( trim( $input) );
	
}
```  
L' argument (ici appelé `$input` ) est envoyé à la fonction `trim()` qui retourne son résultat à la fonction `strip_tags()` qui retourne le résultat à la fonction `return`  qui... retourne le résultat hors de la fonction que j'ai baptisée `sanitize()` (et qui me permet donc de faire à la fois trim et strip_tags d'un seul coup).


**Temps 2. Utiliser la fonction** (on dit: "appeler la fonction Untel") :  
Une fois la fonction déclarée quelque part dans ton code, tu peux l'utiliser où tu le souhaites, et autant de fois que nécessaire.

Reprenons cette fameuse fonction `sanitize()`, et utilisons-la. Voici un exemple concret:

```php

// Si le formulaire a été soumis...
if (isset($_POST) && !empty($_POST) ){

	// sanitisation des inputs
	$name = sanitize( $_POST['name'] );
	$email = sanitize( $_POST['email'] );

	// validation...
	...
}
```

## Exercices
- Utilise une fonction qui mette la première lettre de l'argument en majuscule.  Par ex: si l'input de la fonction est `"emile"`, l'output sera `"Emile"`.
- Utilise la fonction fournie par PHP te permettant d'afficher l'année en cours.
- Affiche à présent la date, l'heure, les minutes et les secondes, en utilisant la même fonction.
- Crée une fonction prenant deux arguments numériques et qui retourne la somme de ces deux arguments.
- Améliore la fonction précédente pour que si l'un des (ou les deux) arguments envoyés n'est pas une valeur numérique (int), la fonction retourne le message suivant: *"Erreur, argument non numérique"*.
- Crée une fonction qui prend en argument une chaîne de caractères (plusieurs mots) et qui retourne les initiales de chaque mot en majuscule. (Exemple: `"In code we trust!"` devient: `ICWT`).
- Invente une fonction qui remplace les lettres "a" et "e" par le caractère "æ" dans chacune des chaînes suivantes: `"caecotrophie", "chaenichthys","microsphaera", "sphaerotheca"`.
- Crée la fonction inverse, qui remplace le caractère "æ" par "ae" dans les chaines suivantes: `cæcotrophie`, `chænichthys`, `microsphæra`, `sphærotheca`
- Crée une fonction te permettant de gérer des messages envers l'utilisateur grâce à deux arguments: le premier argument est le message, le second permet de spécifier un attribut de classe html qui sera utilisée par le CSS (par exemple: "info", "error", "warning"). Grâce à cette fonction, on pourra écrire en php:  

```php 
echo feedback("adresse email incorrecte", "warning");
```
 ce qui provoquera cette injection d'html:  
 
 ```html
 <div class="warning">Adresse email incorrecte.</div>
 ```
 
 - Trouve par toi-même dans la [documentation php](http://php.net/manual/fr/functions.arguments.php) comment modifier ta fonction pour que, si le second argument n'est pas spécifié, sa valeur soit égale à `"info"`.
 - Crée un générateur de mots aléatoires, générant deux mots: un allant de 1 à 5 lettres, l'autre allant de 7 à 15 lettres. L'écran ne montrera que ceci: Un titre invitant l'utilisateur à générer un nouveau mot, ensuite: les deux mots générés, ensuite: un bouton permettant de rafraichir la page (et donc de recréer deux mots).
 - Convertis la chaîne suivante: `"ARRÊTE DE CRIER JE N'ENTENDS PLUS RIEN!!!"` en lettres minuscules.
 - Dans ton nouveau boulot, tu récupères du code du développeur précédent:  

 ```php  
// Calcul du volume d'un cône de rayon 5 et de hauteur 2  
$volume = 5 * 5 * 3.14 * 2 * (1/3);  
echo 'Le volume du cône de rayon 5 et de hauteur 2 est : ' . $volume . ' cm<sup>3</sup><br />';  
// Calcul du volume d'un cône de rayon 3 et de hauteur 4  
$volume = 3 * 3 * 3.14 * 4 * (1/3);  
echo 'Le volume du cône de rayon 3 et de hauteur 4 est : ' . $volume . ' cm<sup>3</sup><br />';  
```

WOA! Une répétition! Ton subsconscient aussitôt crie *DRY! DRY! DRY!*  
Afin qu'il te laisse tranquille, crée une fonction `volume_dun_cone`, qui va calculer le volume du cône en fonction du rayon et de la hauteur. Cette fonction ne va rien afficher, on veut juste qu'elle nous renvoie le volume qu'on cherche.  Voici un schéma, pour bien t'embrouiller (Ben oui, en réalité, les informations utiles à cette mission sont dans le code ci-dessus...)   
![Cone](https://user.oc-static.com/files/5001_6000/5758.gif)

 - Plus d'[exercices sur les fonctions ici](http://www.w3resource.com/php-exercises/php-function-exercises.php).

## Exercice #godmode #walloniequandtunoustiens
- Invente une fonction reverse_string( $stringToReverse) qui réécrit une chaine de caractères à l'envers.
- En Wallonie, les mouvements de jeunesse ont une chanson populaire intitulée "[Buvons un coup ma serpette est perdue](http://www.mamalisa.com/?t=fs&p=1797)".  Utilise la fonction `str_replace` avec  `$substitutions = array( E, I, O, U, OU, É, È, OI, UI, OUI, AN, IN, ON, UN, OIN);` pour transformer automatiquement les voyelles du couplet selon chaque élément de l'array et ainsi générer les paroles complètes de la chanson (le couplet avec chaque diphtongue remplacée). 
