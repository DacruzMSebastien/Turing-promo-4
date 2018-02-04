# PHP/ Exercices dirigés: les conditions

## Table des matières

- [Introduction](php-introduction.md)  
- [Variables](php-variables.md)  
- [Conditions](php-conditions.md) 
- Drill: [Exercices sur les Conditions](php-exercices-conditions.md)  ← 
- [Tableaux (array)](php-array.md)
- [Boucles](php-boucles.md)
- [Fonctions](php-fonctions.md)


Voici une série d'exercices destinés à te driller à l'expression de conditions en programmation.

## Pour rappel


Pour exprimer tes conditions, tu as à ta disposition plusieurs types d'opérateur:

- `==` : égal à
- `!=` : différent de
- `>` : plus grand que
- `<` : plus petit que 
- `>=` : plus grand ou égal à
- `<=` : plus petit ou égal à

La syntaxe d'une structure conditionnelle if/else :


```php

$temperature  = 34; // Joue avec cette valeur pour tester ton script.

if( $temperature > 21 ) {
  // code à exécuter si la condition est TRUE
  $vetement_du_jour = "T-shirt";
  
  }elseif ( $temperature > 10 ){
    $vetement_du_jour = "Pull-over";

 } else {
   // code à exécuter si toutes les conditions précédentes sont FALSE
   $vetement_du_jour = "Pull-over, écharpe et bonnet";
 }
 
 echo $vetement_du_jour;
```

## Exercices

Lance ton serveur de développement local.  
Dans le dossier racine de ton serveur, crée un fichier que tu nommes `conditions.php`.  

### 0. Représente en code le fait de devoir ranger sa chambre si elle est sale.  

**Astuce:** Initialise une variable booléenne `$chambre_est_sale` puis teste là dans une condition. Si elle est vraie, affiche "Range ta chambre, on dirait la cage d'un bonobo!". Sinon, affiche "Ta chambre est trop propre, vis un peu!".  

Fait? Bravo. A présent, modifie ton script pour représenter plutôt comment tes parents s'exprimeraient.  

Ensuite, rendons le script un peu plus subtil en permettant une gradation. Ta chambre pourrait être soit "dégoutante", "sale", "en ordre", "immaculée", "maniaque". Utilise une structure `if/ elseif / else` pour cela. Invente les messages à afficher en fonction de chaque cas de figure.  

### 1. Affiche un message de salutation différent selon l'heure courante.
Si l'heure est entre 05h00 et 9h00 du matin, affiche "Bonjour!".  
Si l'heure est entre 9h01 et 12h00, affiche "Bonne journée!".  
Si l'heure est entre 12h01 et 16h00, affiche "Bon après-midi!".  
Si l'heure est entre 16h01 et 21h00, affiche "Bonne soirée!".  
Si l'heure est entre 21h01 et 04h59, affiche "Bonne nuit!".  

**Astuce:** Exploite le fait que l'on puisse combiner des conditions (via les opérateurs `AND` / `OR`).

### 2. Affiche une salutation différente selon l'âge de l'utilisateur.
Crée un petit formulaire contenant une seule question: "Quel est votre âge ?" (champ de type Number).  
Méthode: GET
Affiche un message différent selon la réponse au formulaire.  
- Si l'âge est inférieur à 12 ans, affiche "Salut petit!"  
- Si l'âge est entre 12 et 18 ans, affiche "Salut l'ado!"  
- Si l'âge est entre 18 et 115 ans, affiche "Salut l'adulte!"  
- Si l'âge est supérieur à 115 ans, affiche "Wow! Toujours vivant?"   

### 3. Affiche une salutation différente selon l'âge et le genre de l'utilisateur.
Complète le formulaire de l'exercice précédent en ajoutant une deuxième question : "Homme ou Femme?" (champ de type Radio).
Si le genre est féminin, adapte la réponse de l'âge correspondant au genre féminin.  
Par exemple, si l'âge est entre 12 et 18 ans et le genre féminin, affiche "Salut l'adolescente!" sinon affiche "Salut l'adolescent!".  
Idem pour les autres tranches d'âge.  
**Astuce:** Exploite le fait que l'on puisse mettre des conditions dans des conditions.

### 4. Affiche une salutation différente selon l'âge, le genre de l'utilisateur et sa langue maternelle.
Complète le formulaire de l'exercice précédent en ajoutant une troisième question : "Parles-tu anglais?" (champ de type Radio: réponses possibles: "yes" ou "non" ).
Adapte le traitement du formulaire en fonction:
- Si l'âge est inférieur à 12 ans et que l'utilisateur répond "yes", retourne: "Hello boy!" ou "Hello Girl!" selon son genre.   
- Si l'âge est entre 12 et 18 ans et que l'utilisateur répond "yes", affiche "Hello Teenage boy!" ou "Hello Teenage girl!" selon son genre.  
- Si l'âge est entre 18 et 115 ans et que l'utilisateur répond "yes", affiche "Hello Sir!" ou "Hello Lady!" selon son genre.  - Si l'âge est supérieur à 115 ans et que l'utilisateur répond "yes", affiche "Wow! Still alive, old man?" ou "old lady?" selon son genre.  


### 5. Retour à l'école de l'échec et du jugement
Crée un petit formulaire qui réagit à la note de l'étudiant.  
Si la note est égale à 1, 2 ou 3, affiche "Ce travail est nul."  
Si la note est égale à 6, 7, 8 ou 9, affiche "Ce travail n'est pas terrible."  
Si la note est égale à 10, affiche "Tout juste!"  
Si la note est égale à 11, 12, 13 ou 14, affiche "C'est pas mal."  
Si la note est 15, 16, 17, ou 18, affiche "Bravo!".  
Si la note est 19 ou 20, affiche "Police! Arrêtez ce tricheur!".  

![Giphy](http://media2.giphy.com/media/NzWGJoHbR4zAI/giphy.gif)

### 6. La structure "Switch".

Dans le `switch`, on indique au début sur quelle variable on travaille. On dit à PHP : Je vais analyser la valeur de `$note`. Après, on utilise des `case` pour analyser chaque cas (`case 0`,`case 10`, etc.). Cela signifie  : Dans le cas où la valeur est 0… Dans le cas où la valeur est 10…

Avantage : on n'a plus besoin de mettre le double égal ! Défaut : ça ne marche pas avec les autres symboles (`< > <= >= !=`). En clair, le switch ne peut tester que l'égalité.

![Un Switch](./rail-switch.png)

Lis la documentation sur la structure [switch](http://php.net/manual/fr/control-structures.switch.php).

Puis, crée un nouveau fichier `conditions-switch.php` et refais l'exercice précédent mais en remplaçant ta structure if/else par une structure switch.

### 7. Écrire une expression conditionnelle...
... utilisant les variables $age et $sexe dans une instruction `if/else` pour sélectionner une personne de sexe féminin dont l’age est compris entre 21 et 40 ans et afficher un message de bienvenue approprié.   
- Message si OK: *"Bonjour, bienvenue parmi nous!"*  
- Message si KO: *"Désolé, vous ne remplissez pas les critères de sélection."*

### 8. La réécrire, mais sans ELSE.
Il est possible de réaliser exactement la même chose, mais avec une simple instruction `if` (sans  `else`). Essaye.


### 9. La structure "ternaire".

J'imagine que comme moi, vous n'aviez jamais entendu ce mot bizarre: "ternaire". En fait, c'est pas très compliqué: c'est une manière rapide de déterminer la valeur d'une variable en fonction d'une condition.

Exemple:  

```php
$age = 24;
$majeur = ($age >= 18) ? true : false;
```

Ce qui revient à écrire:

```php
<?php
$age = 24;
if ($age >= 18)
{

	$majeur = true;

} else {

	$majeur = false;
}

```

### 10. Exercice ternaire

Dans un script `ternaire.php` déclare à l'aide d'une expression ternaire, une variable `$bonjour` dont la valeur est un message de salutation selon qu'une autre variable `$genre` soit 'H' ou 'F'.  
Termine par afficher la valeur de `$bonjour`.


### 11. Un quizz, peut-être?

Tu as fait tous ces exercices? Bravo, voici un gif!

![Giphy](http://media0.giphy.com/media/CNprQ8KGpORVu/giphy.gif)

Fais-toi un petit [quizz](../../Quizz/PHP/php-base-1.md) pour vérifier l'état de tes connaissances.

