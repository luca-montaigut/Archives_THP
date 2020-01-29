require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "
      _,.
    ,` -.)
   ( _/-\\\\-._
  /,|`--._,-^|            ,
  \\_| |`-._/||          ,'|
    |  `-, / |         /  /
    |     || |        /  /
     `r-._||/   __   /  /   __ __ __  __ __   ___  __  __ ______
 __,-<_     )`-/  `./  /    || // ||\\ || ||  // \\\\ ||  || | || |
'  \\   `---'   \\   /  /     ||<<  ||\\\\|| || (( ___ ||==||   || 
    |           |./  /      || \\\\ || \\|| ||  \\\\_|| ||  ||   ||     
    /           //  /     
\\_/' \\         |/  / ______   ___   __ __ ____  __  __  ___  ___  ___  ____ __  __ ______   
 |    |   _,^-'/  /  | || |  // \\\\  || || || \\\\ ||\\ || // \\\\ ||\\\\//|| ||    ||\\ || | || |     
 |    , ``  (\\/  /_    ||   ((   )) || || ||_// ||\\\\|| ||=|| || \\/ || ||==  ||\\\\||   ||
  \\,.->._    \\X-=/^    ||    \\\\_//  \\\\_// || \\\\ || \\|| || || ||    || ||___ || \\||   ||
  (  /   `-._//^`  
   `Y-.____(__}
    |     {__)
          ()
"                  

puts "###########################################################################################"
puts "                               Oye Oye braves gens,"
puts "                   Bienvenue au Grand Tournoi du Royaume de THP !\n"
puts "###########################################################################################\n\n"

puts "  Ainsi dont, tu souhaites participer au Grand Tournoi du Royaume de THP."
puts "  Es-tu au courant qu'un seul chevalier en ressortira vivant ?\n\n"
puts "  Hum... Je vois. Pour l'or et la gloire éternelle...\n\n"
puts "  Bon alors, commençons ton inscription : es-tu un Sire ou une Dame ?"
particule = 0
puts "  1. Sire"
puts "  2. Dame"
print " > "
particule = gets.chomp.to_i
while particule != 1 && particule != 2
  puts "  Je n'ai pas bien compris, peux-tu répéter stp ?"
  puts "  1. Sire"
  puts "  2. Dame"
  print " > "
  particule = gets.chomp.to_i
end
puts "  Bien et comment doit-on t'appeller ?"
print " > "
hero_name = gets.chomp
while hero_name == "" 
  puts "  Je n'ai pas bien entendu, parle plus fort stp"
  puts "  Alors comment doit-on t'appeller ?"
  print " > "
  hero_name = gets.chomp
end
if particule == 1
  hero_name = "Sire " + hero_name
else
  hero_name = "Dame " + hero_name
end
print "\n  Quoi #{hero_name} ? ... Quel drôle de nom !"
gets.chomp
puts "\n  Pour finaliser ton inscription : à quel tournoi veux-tu participer ?"
tournoi = 0
puts "  1. Facile = 10 adversaires"
puts "  2. Moyen = 20 adversaires"
puts "  3. Difficile = 50 adversaires"
puts "  4. Hardcore = 100 adversaires"
puts "  5. Custom = choississez votre nombre d'adversaires"
print " > "
tournoi = gets.chomp.to_i
while tournoi < 1 || tournoi > 5 
  puts "\n  Un petit effort stp on a bientôt fini... alors ce tournoi ?"
  puts "  1. Facile = 10 adversaires"
  puts "  2. Moyen = 20 adversaires"
  puts "  3. Difficile = 50 adversaires"
  puts "  4. Hardcore = 100 adversaires"
  puts "  5. Custom = choississez votre nombre d'adversaires"
  print " > "
  tournoi = gets.chomp.to_i
end
case tournoi
when 1
  tournoi = 10
when 2
  tournoi = 20
when 3
  tournoi = 50
when 4
  tournoi = 100
when 5
  tournoi == 5
  puts "  MODE CUSTOM ACTIVÉ"
  puts "  Entrez le nombre d'adversaire souhaité :"
  print " > " 
  tournoi_custom = gets.chomp.to_i
  while tournoi_custom == 0 
    puts "  Erreur de saisie, numéro invalide"
    puts "  Entrez le nombre d'adversaire souhaité :"
    print " > " 
    tournoi_custom = gets.chomp.to_i
  end
  tournoi = tournoi_custom
end

my_game = Game.new(hero_name, tournoi)
puts "\n  Ton inscription est maintenant terminée."
print "  Lorsque tu te sens d'attaque pour combattre, appuie sur la touche Entrer. Bon courage !"
gets.chomp
if tournoi == 1
  puts "\n  Ton adversaire est également prêt\n\n"
else
  puts "\n  Tes #{tournoi} adversaires sont également prêts\n\n"
end
print "      --x--x--x-- Que le Grand Tournoi du Royaume de THP commence ! --x--x--x--"
gets.chomp


while my_game.is_still_ongoing?
  my_game.menu
  print "\n    Entre la commande de ton choix : "
  choice = gets.chomp.to_s
  my_game.menu_choice(choice)
  my_game.enemies_attack
  gets.chomp
  break if my_game.human_player.life_points <= 0
  my_game.new_players_in_sight
end

my_game.end

            
#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit                                         
                                           
                                       
                                                                              
          
          
              
              
                                                                             