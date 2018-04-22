## JavaScript


### AJAX
Dans les premières années, les pages web étaient simples. Les pages contenaient du texte, avec quelque fois un style CSS. Elles comportaient aussi des liens vers d'autres pages pour obtenir de nouveau contenu que vous aviez déplacé sur une page. Mais des développeurs, plus ambitieux, ont décidé de construire des applications plus interactives. Il était dans leurs objectifs de trouver un moyen pour charger du nouveau contenu dans une page sans rechargement complet de cette dernière.
Pour ajouter du contenu dans une page, comme de nouveaux articles sur un site a défilement infinie ou pour vous informer de nouveaux e­mails par exemple, on fait une requête HTTP XML (XHR). Les applications Web qui font cela sont aussi appelés “applications AJAX”. AJAX correspond à Asynchronous JavaScript and XML.
Presque tous les sites qui ajoutent du nouveau contenu sans rechargement de la page (comme Facebook, Gmail, Google Maps, etc.) utilisent la même technique. Ce sont les développeurs de Microsoft Outlook Web Access qui ont initialement créé le `XMLHttpRequest`.

### Requête HTTP XML

Alors a quoi ressemble une `XMLHttpRequest` ?
```
var req = new XMLHttpRequest();
req.onload = function (event) {...};
req.open('get', 'myfile.txt', true);
req.send();
```
La première chose à faire est de créer une nouvelle demande de `XMLHttpRequest`, en l'appelant comme une fonction. Elle retourne un objet qu’on enregistre dans une variable.
Ensuite, nous spécifions une fonction de callback, à appeler lorsque les données sont chargées. Les informations de l'événement sont transmises comme premier argument de la fonction.
Par après, nous spécifions comment obtenir les données que nous voulons, en utilisant req.open. Le premier argument est la méthode HTTP (GET, POST, PUT, etc). Vient ensuite l'URL pour aller chercher le fichier.

Le troisième argument est un booléen indiquant si la demande est asynchrone. Le paramètre par défaut est false. Dans le cas ou la requête n’est pas asynchrone, l'exécution du code s’arrête à cette ligne jusqu'à ce que les données soient récupérées. La requête est alors appelée synchrone. Les requête synchrones ne sont pas souvent utilisées étant donné qu’une demande à un serveur peut prendre une éternité. Le navigateur ne fera donc rien durant une longue période.

Sur la dernière ligne nous envoyons la requête au navigateur pour enclencher la demande de données.
L’utilisation d'un `XMLHttpRequest` permet de charger HTML, JSON, XML et du texte brut sur HTTP et HTTPS. Il prend également en charge d'autres protocoles tels que FTP. Ces requêtes sont très utiles dans le développement d'applications JavaScript. Cette méthode a été fortement développée à tel point que toutes les applications l’utilisent actuellement. Des bibliothèques et des frameworks ont aussi été construits pour aider à faciliter leur utilisation.

### JSON
Le JavaScript Object Notation n’est pas du JavaScript. Officiellement c’est un language totalement différent avec ses propres spécificités. Il est néanmoins une partie importante du JavaScript et il est important d’aborder le sujet.
JSON est un ensemble de règles de formatage de texte pour stocker et transférer des données dans une machine et de façon lisible. Il ressemble beaucoup à la syntaxe d’un objet en JavaScript. Et c’est de là que provient son nom.
Voici quelques JSON :
```
{
    "name": "Yoda",
"age": 894,
    "lightsaber": {"color": "vert"}
}
```
Comme dans le JavaScript, la syntaxe avec les accolades est utilisée. L'exemple ci­dessus est valide en JavaScript.
JSON est utilisé pour transférer des informations entre votre navigateur et un serveur. Les informations sont enregistrées dans des fichiers textes et peuvent être récupérées plus tard. Car il s'agit tout simplement de texte. Cela signifie que vous ne pouvez pas stocker des données complexes comme une fonction. Mais vous pouvez stocker des tableaux, des objets contenant des données simples, des chaînes de caractères et des nombres.
JSON est en train de prendre la place du XML comme format de transfert de données. De nombreuses nouvelles API Web sont écrites exclusivement pour utiliser du JSON. Vous utilisez donc la technologie AJAX pour charger du JSON.

### Utilisation de JSON
En JavaScript l’objet JSON est disponible dans à peu près tous les navigateurs modernes. Il existe des moyens de l'ajouter aux navigateurs qui ne l'ont pas.
```
var jsonString = JSON.stringify ({
    faire: "McLaren",
    modèle: "MP4­12C",
    miles: 5023
});
```
JSON.stringify convertit un objet en une chaîne JSON. Dans cet exemple,  jsonString
devient :  {"faire": "McLaren", "modèle": "MP4­12C", "miles": 5023}.
```
var car = JSON.parse(jsonString);
```
La chaîne de caractère JSON peut être reconvertie en un objet JavaScript. En utilisant `JSON.parse`.  car  est maintenant utilisable comme un objet JavaScript normale. Nous pouvons maintenant redéfinir ses propriétés :

`car.model = "P1"`;

Ressources : 

- [generate data](http://www.generatedata.com/)
- [Array methods](https://developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Objets_globaux/Array)



