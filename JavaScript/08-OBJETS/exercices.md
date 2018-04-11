# Exercice : PNJ (Personnage non-joueur)

* Crée un objet "Character" qui contient les informations suivantes : 

- name (string) 
- age (numero) 
- items_to_give (tableau)

- afficher chaque information sur une ligne séparés dans la console __(for in)__
- faire une fonction "giveItem" qui permet au PNJ de donner un objet aléatoirement

# Exercice : Shop

Crée un tableau avec des *objets* à vendre (épée, hache, sceptre, etc.)

Caractéristique de chaque objet :

- title (string) 
- physic (int)
- magic (int)
- minLevel (int)
- available (boolean)

Manipulation :

- faire une fonction pour afficher tout les objets
- faire une fonction pour afficher les objets disponibles
- faire une fonction pour afficher les objets dont le niveau minimum est de 10


# Exercice : Personnage

* crée un objet "mainCharacter" qui possède le propriétés suivantes : 
- name (string) 
- level (int) 
- life (int) 
- weapon (object) 
- attack (function) 

* l'objet "weapon" possède les propriétés suivantes :
- name (string) 
- damage (int) 

* Appeler la fonction "attack" du personnage
	- la fonction doit retourner :
		(le nom du personnage) attaque avec l'arme (nom de l'arme) les dégâts sont (niveau du personnage multiplié par le damage de l'arme)



# BONUS :

# Exercice : Adversaire

* crée un objet "character" qui possèe le propriétés suivantes : 

- name (string) 
- level (int) 
- life (int) 
- weapon (object) 
- attack (function)
- receiveDamage (function)

* l'objet "weapon" possèe les propriétés suivantes :

- name (string) 
- damage (int) 

* crée un objet "opponentCharacter" a partir de character
* crée un objet "mainCharacter" a partir de character

* Appeler la fonction "attack" de "mainCharacter" afin qu'il attaque "opponentCharacter"
- la fonction doit afficher dans la console (ligne par lige)
	+ (le nom du personnage) attaque (nom de l'adversaire)
	+ avec l'arme (nom de l'arme) 
	+ et lui inflige (niveau du personnage multiplié par le damage de l'arme) de dégats
	+ (nom de l'adversaire) a maintenant (life de l'adversaire) de vie






