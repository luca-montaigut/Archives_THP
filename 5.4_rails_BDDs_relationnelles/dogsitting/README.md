# 🐶 DogSitter 🐕‍

L'appli pour garder votre ami à poil, oui on parle bien de votre chien.

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`git clone git@github.com:luca-montaigut/Dogsitting.git`

`cd FreeDoc`

`bundle install`

### Database creation

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp Dog.all`

`tp Dogsitter.all`

`tp Stroll.all`

`tp City.all`

## 🐰 Auteur
Luca Montaigut : https://github.com/luca-montaigut
