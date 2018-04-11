## JavaScript

```javascript

let table = new Object(); // ancienne manière de déclarer
let table = {}; // nouvelle manière de déclarer

let main_color = "#FF0000";
let chair = {
	color : main_color,
	feets : 4,
	things : ["papier","telecommande","clé usb"],
	knock : function(){
		console.log("TAP TAP ! ");
		console.log( chair.things ); // ["papier",..] si on utilise des références 
		console.log( this.things ); // ["papier",...] si on utilise d'autres instances
	}
};
console.log( chair[feets] ); // pas bon
console.log( chair.feets ); // -> 4
console.log( chair["feets"] ); // -> 4

chair.knock(); // lance la méthode knock

for(let key in chair){ // boucle
	console.log(typeof key); // affiche le type de key ici String
	console.log( key ) // affiche chaque clé de mon objet ("color", "feets",...)
	console.log( chair[key] ) // affiche chaque valeur ("#FF0000", 4,...)
}
```

voir : [w3schools json objects](https://www.w3schools.com/js/js_json_objects.asp)
