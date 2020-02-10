#  ⚕️ FreeDoc 😷

Votre appli de prise de RDV en ligne

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`git clone git@github.com:luca-montaigut/Freedoc.git`

`cd FreeDoc`

`bundle install`

### Database creation

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp Doctor.all`

`tp Patient.all`

`tp Appointment.all`

`tp City.all`

`tp JoinTableDoctorSpecialty.all`

`tp Specialty.all`


## 🐰 Auteur
Luca Montaigut : https://github.com/luca-montaigut
