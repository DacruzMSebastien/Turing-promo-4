# POO: Parc de voitures

## Objectif

On souhaite simuler une gestion de parc de véhicules, on va donc créer une `class Voiture`
Un véhicule est caractérisé par : 

- un numéro d'immatriculation
- une date de mise en circulation
- un kilométrage
- un modèle
- une marque
- une couleur
- un poids

### Lors de l'instanciation de la class pouvoir déterminer si :

- Le modèle est `Audi` elle est d'office `reserved` sinon elle est `free`
- Le véhicule est un utilitaire ou commerciale selon son poids (>3,5 tonnes)
- Le pays d'ou proviens la voiture est la Belgique, la France ou l'Allemagne si l'imatriculation commence par `BE`,`FR` ,`DE`
- Déterminer si elle a beaucoup servi `low < 100.000` ou `middle > 100.000` ou `high > 200.000` selon le kilométrage
- Calculer le nombre d'années depuis la date de mise en circulation

### Changements

Faire de sorte que si :

- Le kilométrage change, la `class` doit refaire la condition pour savoir si elle a beaucoup servi
- Que l'on ne puisse **pas changer** la date de mise en circulation ('private')
- Que l'on ne puisse **pas changer** numéro d'immatriculation ('private')
- Que l'on ne puisse **pas changer** le modèle ('private') 
- Que l'on ne puisse **pas changer** la marque ('private')

Crée un fonction `drive` qui fait "avancer la voiture de 100 000 km" et que l'usure passe de `low` à `high`

### Affichage

Crée une méthode `display` qui permet d'afficher la photo de la voiture et ses caractéristiques dans un tableau HTML

- [Tu trouveras ici des images et des modèles de voitures](http://www.cars-data.com/)




