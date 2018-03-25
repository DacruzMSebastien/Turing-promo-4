# WordPress - https://wordpress.org/

![logo wordpress](wp.jpg)




# Maitriser WordPress

- Lire notre introduction à [WordPress](./wordpress-frontend-tutorial/readme.md)
- Lire la partie 2 de ce [e-book (en anglais)](./wordpress-frontend-tutorial/Wordpress_in_the_classroom.pdf)

# Comment faire un thème wordpress

[Les fonctions pour pouvoir customiser son thème](https://codex.wordpress.org/Function_Reference) en plaçant les différents éléments où on veut

- Pour récupérer l'entete

```php
    <?php get_header(); ?>
```

- Pour récupérer le pied de page

```php
    <?php get_footer(); ?>
```


- Pour récupérer le répertoire du thème (pour corriger les emplacements des CSS, JS, Images)

```php
    <?php echo esc_url( get_template_directory_uri() ); ?>
```


- Pour tester si on a des articles à afficher

```php
      <?php if (have_posts()) : ?>
	//ici, les articles à afficher
      <?php else : ?>
	//ici, le texte alternatif pour dire qu'il n'y a pas d'articles
      <?php endif; ?>
```

- Boucle des articles avec WHILE

```php

      <?php while (have_posts()) : the_post(); ?>
	// Pour chacun des articles à afficher
      <?php endwhile; ?>´´´
```


- Titre d'un article

```php
    <?php the_title(); ?>
```

- Extrait d'un article

```php

    <?php the_excerpt(); ?>
```

- Pour afficher une image associée à un article

```php
    if ( has_post_thumbnail() ) {
    the_post_thumbnail();
    }
```
## Voir aussi
- Installer le thème https://fr.wordpress.org/themes/zerif-lite/ puis personnaliser le CSS  
- http://wordpress.com/ => Pour créer des sites wordpress hébergés en ligne gratuitement  
- http://wpscouts.com/personnaliser-css-wordpress/ <= Si vous avez besoin d'aide pour modifier le CSS d'un thème Wordpress :smile:
- En bonus -> https://www.creativejuiz.fr/blog/tutoriels/wordpress-personnaliser-un-theme-avec-child-theme-enfant