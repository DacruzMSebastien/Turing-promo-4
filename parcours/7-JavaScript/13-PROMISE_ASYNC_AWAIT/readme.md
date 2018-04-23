# Promise, async & away 

## le js est Asynchrone

Une des particularités du Javascript est d'être asynchrone. C'est un concept qui peut être déroutant au début quand on vient du PHP par exemple. 

### Asynchrone, c'est quoi.

Un code asynchrone c'est code qui est non bloquant. C'est-à-dire que les instructions vont se dérouler dans l'ordre dans lequel vous l'avez écrit, mais si une opération met du temps à s'exécuter, les opérations suivantes ses déroulont malgré tout. Avec un code synchrone, ça ne sera pas le cas. Le code se bloquera tant que l'opération n'a pas été éxécutée.
Imaginons que nous devions créer trois opérations.

**En synchrone**

Les opérations seront donc déroulées une à une. Elles n'attentes que l'opération précédente soit finie. Ce qui peut être long dans certains cas.

```
Task 1 ... >
---------------Task 2 ... >
---------------------------Task 3> 
```

**En asynchrone**

Pendant qu'une opération est exécutée, les opérations suivantes sont elles aussi exécutées. Elles n'attendent pas la fin de la tâche 1. 

```
Task 1 ... >
-----Task 2 ... >
---------Task 3 ... > 
```

Son exécution sera plus rapide. Mais du coup, l'asynchrone peuvent amener quelques erreurs si on se met à penser comme en PHP* (ou tout autre langage de programmation synchrone) .

**EXEMPLE 1** 

Regarde le code ci-dessous et copie-colle dans la console.

``` 
console.log('première ligne')
setTimeout( () => { console.log('2e ligne asynchrone exécutée')}, 0) 
console log('3e ligne')
```
Le résultat donnera 

``` 
première ligne 
3e ligne 
2e ligne asynchrone exécutée 
```

Comme on peut le voir, la 3e console log est exécuté avant le second. Un codeur habitué à coder en synchrone risque d'être déconcerté lorsqu'il tombera sur un cas comme celui-là (très souvent en JS)

**EXEMPLE 2** 

Code synchrone en js grâce à ``false`` qui est dans la fonction ``req.open``

````javascript
const req = new XMLHttpRequest();
req.open('GET', 'https://jsonplaceholder.typicode.com/users', false); // False execute la requete en synchrone
req.send(null);
// Cette condition ne serait remplie que quand le fichier est chargé
if (req.status === 200) {
    console.log("Réponse reçue: %s", req.responseText);
} else {
    console.log("Status de la réponse: %d (%s)", req.status, req.statusText);
}
````

L'inconvénient de cette méthode, c'est qu'elle ralentie le temps d'éxecution du script. (Comme vu plus haut). On peut mettre la valeur de ```req.open``` à ``true ``, ce qui le code rendra asynchrone


````javascript
const req = new XMLHttpRequest();
req.open('GET', 'https://jsonplaceholder.typicode.com/users', true); // true execute la requete en asynchrone
req.send(null);
// Cette condition ne serait pas  remplie  lors de son execution
if (req.status === 200) {
    console.log("Réponse reçue: %s", req.responseText);
} else {
    console.log("Status de la réponse: %d (%s)", req.status, req.statusText);
}
````

Mais dans ce cas, on ne rentrera pas dans la condition : 

```javascript
if (req.status === 200) {
    console.log("Réponse reçue: %s", req.responseText);
} else {
    console.log("Status de la réponse: %d (%s)", req.status, req.statusText);
}
```

Au moment de son exécution, la condition n'est pas remplie...

Avec une utilisation du code asynchrone, nous devons utiliser un événement qui permettra de déclencher une autre fonction (callback) qui sera appellée quand l'opération est finie.

Avec l'exemple précédent, on peut gérer l'asynchrone grâce à l'événement``onreadystatechange ``

````javascript
const req = new XMLHttpRequest();

req.onreadystatechange = (event) => {
    // XMLHttpRequest.DONE === 4
    if (req.readyState === XMLHttpRequest.DONE) {
        if (req.status === 200) {
            console.log("Réponse reçue: %s", req.responseText);
        } else {
            console.log("Status de la réponse: %d (%s)", req.status, req.statusText);
        }
    }
};


req.open('GET', 'https://jsonplaceholder.typicode.com/users', true);
req.send(null);

````

C'est un peu long plus que de l'écrire en synchrone, mais les gains de performance sont conséquents et il n'y a pas lieu d'hésiter concernant son utilisation.

Bon le problème avec cette méthode, c'est qu'il faut parfois imbriquer plusieurs ``callbacks`` ou plusieurs conditions. Et ce n'est pas joli joli niveau lecture. Et c'est là qu'interviennent les promesses. Oui c'est vrai finalement c'est le titre de cette page. 

*(*) Notez que depuis peu, une librairie Php permet de faire de l'asynchrone en Php (voir [ReactPHP](https:/reactphp.Org/))*


## Les promesses (enfin)
Je vous l'avais promis, voici les promesses. (Oui je sais ...)

Les promesses (promise dans la langue Shakespeare) en js sont des objets contenant plusieurs méthodes permettant de gérer l'asynchrone. Les promesses sont sorties avec le lots de nouveautés de l'es2015. 

Les promesses permettent donc d'éviter de faire 50 imbrications de callback. Elles permettent aussi d'écrire du code asynchrone, mais qui s'écrit comme du code synchrone. 

````javascript
let loadFile = (url) => {
    return new Promise((resolve, reject) => {
        let xhr = new XMLHttpRequest();

        xhr.onload =  (event) => {
            resolve(xhr.responseText);
             // Si la requête réussit, on résout la promesse en indiquant le contenu du fichier
        };

        xhr.onerror =  (err) => {
            reject(err); 
            // Si la requête échoue, on rejette la promesse en envoyant les infos de l'erreur
        }

        xhr.open('GET', url, true);
        xhr.send(null);
    });
}

````
Ensuite ... on utilise la méthode ``then`` si l'opération réussit. Dans cette méthode on met un callback qui s'éxécutera uniquement si la promesse est résolue. La méthode ```catch``` permet quant à elle de capter si une des opérations ne s'est pas déroulée correctement.

````javascript

loadFile('https://jsonplaceholder.typicode.com/users')
.then((data) => { 
    // data représente le contenu de xhr.responseText envoyé par la méthode resolve(), vous pouvez lui donner n'importe quel nom.
    console.info('Fichier chargé !');
    console.log(data);
}).catch((err) => {
    console.error('Erreur !');
    console.dir(err);
});
````
## async et await

**Les promesses level up**

async et await sont des déclarartions de fonction, elles définissent l'usage asynchrone de la fonction. Elles sont sorties avec l'es2017. Cette écriture permet une meilleure organisation du code car elle n'oblige plus d'utiliser la méthode ``then``. Ces déclarartions travaillent avec des promesses. 

````javascript
let getFile = (url) => {
  return new Promise(resolve => {
    let xhr = new XMLHttpRequest();
        xhr.onload =  (event) => {
            resolve(xhr.responseText);
        };
        xhr.onerror =  (err) => {
            reject(err); 
        }
        xhr.open('GET', url, true);
        xhr.send(null);
  });
}

async function showFile() {
  console.log('calling');
  let result = await getFile("https://jsonplaceholder.typicode.com/users"); 
  // on attend que getFile ait fini son opération avnt de créer la varible result. 
  // Une fois que l'opération est finie il passe à l'instruction suivante.
  console.log(result);
}

showFile();
````
Le mot clé ``async`` est utilisé pour suspendre et reprendre une fonction. Le mot clé ``await`` définit la variable qui attend un résultat. La variable ``result`` est donc créée uniquement quand ``getFile()`` a fini son opération. 



