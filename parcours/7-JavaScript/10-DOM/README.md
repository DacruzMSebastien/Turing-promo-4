## JavaScript

### Le DOM
Le Document Object Model est un moyen de manipuler la structure et le style d'une page HTML. 
Il représente les entrailles de la page que le navigateur voit. 
Il permet aux développeurs de le modifier avec du JavaScript.
Si vous souhaitez avoir un regard sur le DOM d'une page, ouvrez les outils de développement dans votre navigateur et recherchez "l’inspecteur d‘éléments". 
Dans la plupart des navigateurs, vous pouvez supprimer et modifier directement les éléments du DOM.

#### Les arbres et les branches
HTML est une structure de type XML. 
Les éléments qui le forment ont une structure de nœuds avec des parents et des enfants. 
Comme le tronc et les branches d'un arbre. 
Il y a un élément de racine (html) avec des branches comme le `head` et `body`. 
Et chaque branche a ses propres branches. 
Pour cette raison, le DOM est aussi appelé l'arbre DOM.
La modification du DOM se fait en choisissant un élément et en changeant quelque chose à son sujet. 
C’est une action que l’on fait souvent en JavaScript. 
Pour accéder au DOM à partir de JavaScript, l'objet `document` est utilisé. 
Il est fourni par le navigateur et permet au code sur la page d'interagir avec le contenu.

#### Obtenir un élément
Tout d'abord, nous devons savoir comment obtenir un élément. 
Il y a un certain nombre de façons de le faire.

#### Par l’ID
`document.getElementById` est une méthode pour obtenir un élément par son ID.

`var pageHeader = document.getElementById('pageHeader');`

L'élément de `pageHeader` peut alors être manipulé. 
Sa taille et la couleur peuvent être modifiées par exemple. 
Ou un autre code peut être déclaré pour gérer l'élément quand on clique dessus ou quand il es survolé.
Notez que `getElementById` est une méthode de l'objet document. 
La plupart des méthodes utilisées pour accéder à la page se trouvent sur l'objet document.
Par le tag (nom de balise)
`document.getElementsByTagName` fonctionne de la même manière que `getElementById`, sauf qu'elle prend un nom de tag (div, ul, li, etc.) au lieu d'un ID. Elle renvoie une `NodeList`, qui est essentiellement un tableau des éléments DOM qu’elle a trouvé.

#### Par le nom de classe
`document.getElementsByClassName` renvoie le même genre de `NodeList` comme `getElementsByTagName`, sauf que vous passez un nom de classe et non un nom de tag.

#### En sélecteur CSS
De nouvelles méthodes sont disponibles dans les navigateurs modernes. 
Elles font des sélections d’éléments plus faciles en permettant l'utilisation de sélecteurs CSS. 
Il s'agit de : `document.querySelector` et `document.querySelectorAll`.
```
var pageHeader = document.querySelector('#header');
var bouton = document.querySelectorAll('.btn');
```
`querySelector`, comme `getElementById`, retourne un seul élément alors `querySelectorAll` renvoie une `NodeList`. 
Si plusieurs éléments correspondent au même sélecteur et que vous utilisez `querySelector`, seul le premier élément sera retourné.
