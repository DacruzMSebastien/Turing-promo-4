# PHP

## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  ←  
- [Conditions](php-conditions.md)
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md)
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md)
- [Fonctions](php-fonctions.md)

##  Introduction, Variables et Conditions

Programmer = manipuler de l'information.

```php
$nom_de_la_variable = 'Valeur de la variable';
$president_usa = 'Donald Trump';
$annee_naissance = 1973; 
$is_raining = false;
$team_players = array('john','Jeanne','Julien');
```

Tu te rappelles [ce petit script PHP](php-introduction.md) que tu voulais addresser aux sept milliards d'humains?
Et bien, réalisons-le.

1. Lance ton serveur local

2. Dans ton dossier de travail servi par PHP, crée un dossier variable et crée un fichier `humans.php` contenant ce code : 

```php
<html>
  <head><title>Hi!</title></head>
  <body>
    <h1>Bonjour <?php echo $_GET['nom']; ?>!</h1>
  </body>
</html>
```
3. Une fois fait, visite les urls suivants et observe ce qui se passe:
  - [http://localhost:80/variable/humans.php?nom=Alexandre](http://localhost:80/variable/humans.php?nom=Alexandre)
  - [http://localhost:80/variable/humans.php?nom=Pierre](http://localhost:80/variable/humans.php?nom=Pierre)
  - [http://localhost:80/variable/humans.php?nom=Jennifer](http://localhost:80/variable/humans.php?nom=Jennifer)
  - teste d'autres variations.
4. Relis le script, essaye de comprendre ce qu'il fait.

Comme tu vois, ce fichier contient principalement du html, avec un petit bout de code qui débute par `<?php` et termine par `?>`. Considère que ce sont des marqueurs qui permettent de mettre du php dans du HTML.

### examinons ce bout de code PHP

```php
<?php echo $_GET['nom']; ?>
```

- ` $_GET ` est une variable.
- en PHP, une variable commence toujours par le sigle `$`
- `echo ` est une fonction fournie par PHP, qui sert à afficher quelque chose (ce qui est à droite de la fonction).
- la ligne se termine par `;`

Mais commençons par le commencement: la variable.

## 1ère structure logique: les variables

![Carton](https://www.dropbox.com/s/pec9eeigmw5a8ra/carton.png?dl=1)

Les *variables* nous permettent de retenir temporairement des informations en mémoire. Avec elles, nous allons pouvoir par exemple retenir le pseudonyme du visiteur, effectuer des calculs et bien d'autres choses !  

Une variable, c'est une petite information stockée en mémoire temporairement. Elle n'a pas une grande durée de vie. En PHP, la variable (l'information) existe tant que la page est en cours de génération. Dès que la page PHP est générée, toutes les variables sont supprimées de la mémoire car elles ne servent plus à rien. Ce n'est donc pas un fichier qui reste stocké sur le disque dur mais une petite information temporaire présente en mémoire vive.  

C'est à vous de créer des variables. Vous en créez quand vous en avez besoin pour retenir des informations.  

### Un nom et une valeur

Une variable est toujours constituée de deux éléments :  
- son **nom** : pour pouvoir la reconnaître, vous devez donner un nom à votre variable. Par exemple `$age_du_visiteur`;  
- sa **valeur** : c'est l'information qu'elle contient, et qui peut changer. 
Par exemple : `17`.
Ici, je vous ai donné l'exemple d'une variable appelée `$age_du_visiteur` qui a pour valeur `17`.
On peut modifier quand on veut la valeur de cette variable, faire des opérations dessus, etc. Et quand on en a besoin, on l'appelle (par son nom), et elle nous dit gentiment la valeur qu'elle contient.

### différents types de variables
Personnellement, les variables me font penser à des boîtes en carton. On peut y mettre ce que l'on veut: des pizzas, des chaussures, des documents...  

En informatique, c'est pareil: les variables permettent de stocker pleins de choses de nature très différentes: des chiffres (par ex: l'âge, le prix ou la quantité d'un produit...), du texte (par ex: le prénom d'un utilisateur, le nom d'une pizza, le modèle d'une chaussure...), etc.  
Il y a différents types de variables à votre disposition, types que vous choisirez en fonction de ce dont a besoin votre script, et de la nature de l'information à traiter.

Voici les principaux types à connaître.

- **Les chaînes de caractères** (*string*) : autrement dit, du texte. Tout texte est appelé chaîne de caractères. En PHP, ce type de données a un nom :string. On peut stocker des textes courts comme très longs au besoin.  
Une chaîne de caractères doit être écrite **entre guillemets ou entre apostrophes** (on parle de guillemets simples) :'Je suis un texte'.   
- **Les nombres entiers** (*int*) : ce sont les nombres du type 1, 2, 3, 4, etc. On compte aussi parmi eux les entiers relatifs : -1, -2, -3…  
Exemple : `42`.  
- **Les nombres décimaux** (*float*) : ce sont les nombres à virgule, comme `14,738`. Attention, les nombres doivent être écrits avec un point au lieu de la virgule (c'est la notation anglaise).  
Exemple :`63.5538`.  
- **Les booléens** (*bool*) : c'est un type qui permet de stocker soit *vrai* soit *faux*. On les utilise très fréquemment. On écrit `true` pour vrai, et `false` pour faux.  
- **Rien** (*NULL*) : aussi bizarre que cela puisse paraître, on a parfois besoin de dire qu'une variable ne contient rien. Rien du tout. On indique donc qu'elle vautNULL. Ce n'est pas vraiment un type de données, mais plutôt l'absence de type.  
- **Les tableaux** (*Array*) : les tableaux permettent de contenir un ensemble de valeurs, que vous pouvez retrouver grâce à une clef unique. C'est une structure logique très puissante mais qui nécessite un chapitre en soi ([ici](php-array.md)).  
Exemple: 

```php
$classe= array(0 => 'Cindy', 1 => 'Jean', 2 => 'Mustapha', 3 => 'Pierre', 4 => '', 5=>'Eric'); 
```
Ce tableau contient 6 éléments. Chaque élément a une clef (le chiffre) et une valeur (la partie à droite du signe `=>`).

### Définir une variable
Voici comment initaliser une nouvelle variable:  

```php
$age_du_visiteur = 17;
```


### Exercices

- Initie une variable décrivant ton prénom.
- Ensuite, sur une seconde ligne, initie une variable qui représente ton âge.
- Ensuite, à la ligne suivante, initie une variable qui décrive si tu as faim ou pas.
- Ensuite, à la ligne suivante, initie une variable qui décrive la couleur de tes yeux.
- Ensuite, à la ligne suivante, initie une variable qui décrive ta famille (avec une variable Tableau, dont chaque entrée est le prénom d'un membre de ta famille).

