# Composants de design

## Mission
Dans ce repo se trouvent 22 composants interfaces. 

Intègre-les en html+css en suivant l'ordre numérique (de 1 à ...). 

Utilise SASS pour générer le fichier css. Profite-en pour tester les variables, le *nesting* et les `@import`. 

Pour chaque composant, crée un dossier du même nom que l'image, contenant cette structure:

```ascii
- nom-du-composant/
    L index.html
    L assets
        L css
        L sass
        L img
```

**Nom du repository à créer sur github:** `7-composants-de-design`  

## Installer un compilateur de SASS

- Installer Ruby
- Installer un compilateur: [koala](http://koala-app.com) est gratuit et cross-platform.

## Utiliser sass pour générer du code css modulaire

- lancer koala et y ajouter ton dossier de travail
- créer le(s) fichier(s) scss
- compiler le fichier css à chaque fois que le fichier scss est modifié.

## explore ce que sass te permet de faire
- utilisation de variables
- importation de fichiers partiels
- Imbrication ("Nesting") des sélecteurs

Tutos: [The SASS way - thesassway](http://www.thesassway.com/beginner) 
Playground: [SASS meister](https://www.sassmeister.com/)


## Ressources et images

Les images ne permettent pas d'identifier les fonts facilement. Utilise des polices différentes mais proches.

Voici deux outils utiles:  
- [Fontpair](http://fontpair.co/)
- [Google Font](https://fonts.google.com/)

Quelques images te sont fournies dans le [dossier assets](assets).

Pour le reste tu devras parfois extraire des captures d'écran les images nécessaires pour ton intégration html/css. 
Pour cela, utilises des outils en ligne comme [pixlr](https://pixlr.com/editor/) ou [GIMP](https://www.gimp.org/fr/) en local.

Les photos peuvent être différentes et tu peux en trouver ici : [Unsplash](https://unsplash.com).

## Astuces 

[Fais ta propre grille avec SASS](https://css-tricks.com/dont-overthink-it-grids/)

### Voir le contour de tous les éléments
À appliquer au `body`
```
.outline-mode * {
    outline: 1px solid #000;
}
```

### Extention Chrome 

- [pix-to-pix-pixel-perfect](https://chrome.google.com/webstore/detail/pix-to-pix-pixel-perfect/binboaimbgchaamickjnhgjdccohndin?hl=fr)



