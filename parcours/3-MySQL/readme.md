[Becode](../../../) / [parcours](../../) / [SQL](../) / Intro

# MySQL et les base de données

## Objectifs de ce parcours SQL 
- Comprendre ce qu'est une base de données et à quoi cela sert.
- Maîtriser la syntaxe SQL. 
- Pouvoir concevoir et mettre en place une base de données dans un projet concret.

## Utilité des bases de données

Salut l'octocat,

Te rappelles-tu de la *todolist* que tu as réalisée en php, et qui utilisait un fichier json pour stocker les données de la conversation?  

C'est sympa et cela marche bien apparemment, mais pourtant, c'est pas top. Car l'architecture de notre application se base sur un fichier ( `todo.json`) pour stocker les informations de manière permanente. Or, pour lire ou écrire dans un fichier, le serveur web doit à chaque fois l'ouvrir, puis le lire ou écrire dedans, puis le refermer. À. Chaque. Fois.   

- **Problème 1: si le nombre d'accès simultanés augmente**: imagine que ta todolist est utilisée par 200 personnes en même temps: lorsqu'une tâche est ajoutée à la liste ( donc au fichier `data.json`) le processus lancé par le premier utilisateur monopolise le fichier: les 199 autres processus (correspondant aux autres utilisateurs) doivent patienter, chacun à leur tour, que le fichier soit libéré par le processus en cours. Un peu comme à la boucherie, ou à la Poste.  ![Chouette, il faut faire la file. Quel plaisir!](./assets/waitingline.jpg)
- Par conséquent, il est fort à parier qu'au delà de cinq ou six utilisateurs simultanés, cela crée une telle latence que les autres utilisateurs reçoivent des erreurs de type "time out" (signifiant que la requête HTTP n'a pas abouti à une réponse valide).  

- **Problème 2: si le contenu augmente**: au fur et à mesure que la liste de tâche augmente, le fichier gonfle en poids (kilobytes). L'opération d'ouverture, écriture, fermeture du fichier sera donc de plus en plus lente.

Face à ces limites, la solution actuelle est d'associer au serveur web et à l'exécutable PHP un autre serveur: un serveur de bases de données. Son rôle dans l'architecture LAMP est précis: stocker des données, et permettre d'interragir avec ces données en les servant très (très) rapidement à PHP, ce qui minimise les risques de "timeout". 

![via MySQL](./assets/amazon.gif)

*Pour la petite histoire, il va très vite parce que le serveur SQL met les données dans la RAM de l'ordinateur hébergeant le serveur. Et cela veut dire quoi RAM? Yep: "Rapid Access Memory". Comme il est en mémoire, pas besoin d'ouvrir ou fermer des fichiers sur un disque dur, typiquement plus lent.*

## Les bases de données sont partout

Les bases de données (ou "db" pour faire court) sont parfaites pour **manipuler rapidement une grande quantité de données**. C'est pour cela que Facebook, Google, Pinterest, airbnb.com, gmail, google drive, tous les sites utilisant un CMS comme WordPress ou Joomla... utilisent des bases de données. 

## Les DBMS (Database Management Systems)

Il existe de nombreux logiciels permettant de manipuler des bases de données, appelés des "moteurs de gestion de bases de données. En anglais et en bref: DBMS.  

Pour le web, on utilise principalement ceux-ci:

- MySQL (et sa version recommandée: MariaDB)
- SQLite
- PostgreSQL
- MongoDB

MySQL étant très populaire et présent sur 99.99% des hébergeurs, c'est lui que nous utiliserons durant cette séquence. Ce qui est cool, c'est que le langage pour interagir avec MySQL est le SQL, qui est également utilisé par les autres DBMS. Du coup ce que tu apprends avec MySQL est transposable facilement si tu devais en utiliser un autre.

## A quoi ressemble une base de données?

Une **base de données** n'est en fait qu'un groupe d'une ou plusieurs tables contenant... des données. Un peu comme un tableau Excel ou Google sheets. Voici une base de données ne contenant qu'une seule table: "météo".

Dans cet exemple, la **table** "météo" contient les données permettant de présenter les prévisions météos des grandes villes belges (température minimum et maximum).  
![](https://www.dropbox.com/s/oagxviyi5aq7f2w/exemple-table.png?dl=1)


Chaque ville a sa propre **rangée** (en anglais: *row*).  
![La rangée](https://gmkr.io/s/594453aaefc85c5e2a510538/0)  

Chaque rangée (donc, ici, ville) est décrite par autant de **colonnes** que nécessaire par l'application (en anglais: *column*).   
![La colonne](https://gmkr.io/s/5944537d545689270dca9431/0)

La donnée en elle-même se trouve dans une **cellule** (en anglais: *cell*).  
![La cellule](./assets/exemple-cellule.png) 

**Vérifie bien qu'à ce stade, tu comprennes et saches utiliser à bon escient ces termes: *base de données*, *table*, *rangée*, *colonne*, *cellule*.**

## La syntaxe SQL
Il nous reste à présent à te familiariser avec la syntaxe SQL pour que tu puisses poursuivre ta quête des super-pouvoirs de développeur web. 

Une fois ta db créée, ton application effectuera essentiellement 4 types d'opération, qu'on résume par "**CRUD**", autrement dit:

1. **C**reate : ajouter une rangée à ta table.   
2. **R**ead : sélectionner une ou plusieurs rangées (pour les afficher par exemple).   
3. **U**pdate : modifier l'information stockée sur une rangée.   
4. **D**elete : effacer une rangée.  

### Séquences

Pour découvrir la syntaxe SQL, suis à présent ces leçons, dans cet ordre.

1. [Intro](./readme.md)   (tu es ici)  ←
1. Read : [SELECT](./1.select.md)
1. Create : [INSERT INTO](./2.insert.md)
1. Update : [UPDATE](./3.update.md)
1. Delete : [DELETE FROM](./4.delete.md)
2. Pour [voler de tes propres ailes](./5.moveon.md)

Pour te faciliter l'apprentissage, tu ne dois rien installer à ce stade. On va utiliser le site http://sqlfiddle.com pour que tu ne doives te concentrer que sur la compréhension et l'acquisition de la syntaxe SQL.

---

## Besoin d'aide? 

- Formate tes recherches sur google ainsi: "*mysql how to ...* ". Oui, en anglais, car Napoléon a perdu à Waterloo.
- forums et endroits où chercher et poser tes questions: [https://dba.stackexchange.com](https://dba.stackexchange.com) 
- Le look de [SQLCourse.com ](http://www.sqlcourse.com/intro.html) est vieillot, mais son contenu est très bien expliqué et permet d'aller en détail.

![Peace, bro](./assets/dancingcat.gif)
