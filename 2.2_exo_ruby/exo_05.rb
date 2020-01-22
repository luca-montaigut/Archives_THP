# Dans le cas présent, #{} permet d'afficher le résultat des opérations stipulées entre les accolades 

# affiche : On va compter le nombre d'heures de travail à THP
puts "On va compter le nombre d'heures de travail à THP"
# affiche : Travail : 550
puts "Travail : #{10 * 5 * 11}"
# affiche : En minutes ça fait : 33000
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

# affiche : Et en secondes ?
puts "Et en secondes ?"

# affiche : 1980000
puts 10 * 5 * 11 * 60 * 60

# affiche : Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?
puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

# affiche : false
puts 3 + 2 < 5 - 7

# affiche : Ça fait combien 3 + 2 ? 5
puts "Ça fait combien 3 + 2 ? #{3 + 2}"
# affiche : Ça fait combien 5 - 7 ? -2
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

# affiche : Ok, c'est faux alors !
puts "Ok, c'est faux alors !"

# affiche : C'est drôle ça, faisons-en plus :
puts "C'est drôle ça, faisons-en plus :"

# affiche : Est-ce que 5 est plus grand que -2 ? true
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
# affiche : Est-ce que 5 est supérieur ou égal à -2 ? true
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
# affiche : Est-ce que 5 est inférieur ou égal à -2 ? false
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"