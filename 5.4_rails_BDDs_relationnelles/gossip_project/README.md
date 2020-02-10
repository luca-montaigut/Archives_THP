# 📫 Gossip Project

L'appli pour balancer vos pires ragots aux yeux de tous et vous faire des amis...ou pas.

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`git clone git@github.com:luca-montaigut/Gossip_Project.git`

`cd FreeDoc`

`bundle install`

### Database creation

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp User.all`

`tp Gossip.all`

`tp Tag.all`

`tp JoinTableTagGossip.all`

`tp PrivateMessage.all`

`tp City.all`

## 🐰 Auteur
Luca Montaigut : https://github.com/luca-montaigut

