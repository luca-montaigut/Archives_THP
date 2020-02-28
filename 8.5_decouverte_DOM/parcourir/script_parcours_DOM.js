// Combien y a-t-il d'éléments <p> présents dans la page HTML ?
console.log(document.getElementsByTagName('p').length)

// Quel est le contenu texte de l'élément portant l'id coucou ?
console.log(document.getElementById('coucou').innerHTML)

// Quelle est l'URL vers laquelle pointe le 3ème élément <a> de la page HTML ?
console.log(document.getElementsByTagName('a')[2].href)

// Combien d'éléments portent la classe compte-moi ?
console.log(document.getElementsByClassName('compte-moi').length)

//Combien d'éléments <li> portent la classe compte-moi ?
console.log(document.querySelectorAll('li.compte-moi').length)

// Combien d'éléments <li> et situés dans une liste ordonnée portent la classe compte-moi ?
console.log(document.querySelectorAll('ol li.compte-moi').length)

// Trouver l'élément caché dans le 1er <li> du second <ul> de l'unique <div>
console.log(document.querySelector('div').lastElementChild.querySelector('li').innerHTML)