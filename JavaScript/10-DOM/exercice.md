## DOM

- Télécharger fichier "file.zip"

# #EXERCICE 1 : Manipulation de classes

- sélectionner le body 
- lui retirer la classe "bg-aqua"
- lui ajouter la classe "bg-olive"

- sélectioner first-paragraph
- lui retirer les classes "bg-lime" et "gray"
- lui ajouter la class "aqua"

- sélectionner tous les éléments qui ont la classe 'bg-silver'
- modifier tout ces éléments en leurs ajoutant la classe "bg-teal"
- modifier tout ces éléments en leurs supprimant la classe "bg-silver"

- sélectionne tous les éléments de type 'blockquote'
- modifier tout ces éléments en leurs ajoutant la classe "bg-white"

## EXERCICE 2  : Selecteurs CSS

- avec `querySelector` sélectioner l'élément 'my-table'
- lui ajouter la classe "bg-purple"

- avec `querySelectorAll` sélectioner tous les paragraphes dans 'container'
- modifier tout ces éléments en leurs ajoutant la classe 'shadow'

## EXERCICE 3

- sélectionne tous les éléments de type 'pre'
- avec la propriété `style` change la couleur de texte
- avec la propriété `style` change la couleur de fond grâce à `backgroundColor`

- avec la propriété `style` ajouter un `border-top` de `3px solid red` (n'oublie pas que tu peux acceder au propriété d'un objet grâce comme ceci : ["prop-name"] )
- avec la propriété `style` ajouter un `border-bottom` de `3px solid red`

- sélectionne le premier élément de type 'h3'
- ramplacer son contenu HTML en `<em>Itelic title ! yeah !</em>`

- sélectionne le premier élément de type 'h2'
- ramplacer son contenu texte par en `<strong>HTML doens't work !</strong>`


## EXERCICE 4 : Création d'éléments

- sélectioner le premier 'ul'
- crée un élément de type 'li'
- ajouter ce texte `Mon meilleur ami est <a href='http://www.google.com'>Google</a>` dans le 'li'
- ajouter ce 'li' l'élément dans le ul

- sélectionner le premier lien dans le 'li' précedement crée
- avec la propriété `style` change la couleur de texte de ce lien

## EXERCICE 4 : Création et suppression de plusieurs éléments

- sélectionner le premier élément 'ol'
- faire une boucle sur tous les enfants de ce dernier grâce à sa propriété `children`
- supprimer chaque enfant de 'ol' grâce à `removeChild()`

- déclare dans un tableau les valuers suivantes : ["Silent Teacher","Code Monkey", "CodeCombat"]
- faire une boucle sur tous les enfants du tableau précédement crée
- pour chaque valeur du tableau crée un élément 'li' crâce à `document.createElement()` 
- ajouter à chaque 'li' la valeur courrante tableau
- ensuite ajouter chaque 'li' à l'élément 'ol' précédement sélectionné


### Reminder

Selecteurs
- document.getElementById()
- document.getElementsByClassName()
- document.getElementsByTagName()
- document.querySelector()
- document.querySelectorAll()

Création d'éléments
- document.createElement()
- element.appendChild()

Manipulation de classes CSS
- element.className
- element.classList.remove()
- element.classList.add()
- element.classList.toggle()

Manipulation CSS
- element.style _( ex : `element.style.backgroundColor = "blue"`)_

Autres
- element.id
- element.innerHTML
- element.innerText




