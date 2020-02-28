function changeTitle() {
  document.querySelector('.jumbotron-heading').innerHTML = "Ce que j'ai appris à THP";
  document.querySelector('.lead').innerHTML = "THP est une formation qui, en 3 mois, à plein temps, vous apportera des connaissances actionnables pour vous permettre de voir plus loin. Chez nous, pas de professeurs, pas de locaux, mais un groupe de travail en présentiel. Après 11 semaines, les principaux langages et outils du web n'auront plus de secret pour vous !";
}

function changeCallToActions() {
  document.querySelector('section div p a').innerHTML = "OK je veux tester !";
  document.querySelector('section div p a').href = "http://www.thehackingproject.org";
  document.querySelectorAll('section div p a')[1].innerHTML = "Non Merci";
  document.querySelectorAll('section div p a')[1].href = "https://www.pole-emploi.fr/accueil/";
}

function changeLogoName() {
  document.querySelector('.navbar-brand strong').innerHTML = "The THP Experience";
  document.querySelector('.navbar-brand strong').style.fontSize = "2em";
  
}

function populateImages() {
  let imagesArray = ["https://img.icons8.com/color/480/000000/html-5.png", "https://img.icons8.com/color/480/000000/css3.png", "https://img.icons8.com/color/480/000000/javascript.png", "https://img.icons8.com/color/480/000000/ruby-programming-language.png", "https://img.icons8.com/color/480/000000/bootstrap.png", "https://img.icons8.com/color/480/000000/github.png", "http://jeudisdulibre.be/wp-content/uploads/2014/02/Ruby_on_Rails-logo.png", "https://avatars2.githubusercontent.com/u/25484553?s=200&v=4", "https://img.icons8.com/color/480/000000/heroku.png"];
  for (let i = 0; i < 9; i++) {
    document.querySelectorAll('.card-img-top')[i].setAttribute("src", imagesArray[i] );
  }
}

function deleteLastCards(nbToDelete) {
  for (let index = 0; index < nbToDelete; index++) {
    let cards = document.querySelectorAll('.card');
    cards[cards.length - 1].remove();
  }
}

function changeCardsText() {
  let texts = ["L’HyperText Markup Language, généralement abrégé HTML, est le langage de balisage conçu pour représenter les pages web", "Les feuilles de style en cascade, généralement appelées CSS de l'anglais Cascading Style Sheets, forment un langage informatique qui décrit la présentation des documents HTML et XML", "JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs. C'est un langage orienté objet à prototype."];
  for (let i = 0; i < 3; i++) {
    document.querySelectorAll('.card-text')[i].innerHTML = texts[i];    
  }
}

function changeViewButtons() {
  let occurencies = document.querySelectorAll('.btn-group');
  for (let i = 0; i < occurencies.length; i++) {
    document.querySelectorAll('.btn-group')[i].firstElementChild.classList.replace('btn-outline-secondary', 'btn-success');
  }
}

function fuckedUp() {
    let newDiv = document.createElement("div");
    newDiv.classList.add('row'); 
    newDiv.appendChild(document.querySelectorAll('.col-md-4')[2]);  
    let currentDiv = document.querySelectorAll(".row")[1]; 
    document.querySelectorAll(".container")[3].insertBefore(newDiv, currentDiv.nextSibling); 
}

function perform() {
  changeTitle();
  changeCallToActions();
  changeLogoName();
  populateImages();
  deleteLastCards(3);
  changeCardsText();
  changeViewButtons();
  fuckedUp();
}

perform();
