require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "
                    ______              __    __                               
                   / ____/_______  ____/ /___/ /_  __   
                  / /_  / ___/ _ \\/ __  / __  / / / /  
                 / __/ / /  /  __/ /_/ / /_/ / /_/ /   
                /_/   /_/ _ \\___/\\__,_/\\__,_/\\__, /    
                         | | / / ___/       /____/                                                
                       _ | |/ (__  )
                      / /|___/____/____  ____
                 __  / / __ `/ ___/ __ \\/ __ \\
                / /_/ / /_/ (__  ) /_/ / / / /
                \\____/\\__,_/____/\\____/_/ /_/   
"

puts "\n#####################################################################"
puts "                      Ladies et Gentlemen,"
puts "          Bienvenue pour le combat du siècle à la THP Arena !\n"
puts "#####################################################################\n\n"

print "  À ma droite \"Freddy\" "
player1 = Player.new("Freddy")
print "et à ma gauche \"Jason\""
player2 = Player.new("Jason")
puts "\n  Ils vont maintenant s'affronter sous vos yeux jusqu'à la mort."
print "\n  (Appuyez sur Entrer pour poursuivre)"
gets.chomp

i = 1
while player1.life_points > 0 && player2.life_points > 0
  puts "\n\n  ======= Round n°#{i} ======="
  puts player1.show_state
  print player2.show_state
  gets.chomp
  puts "\n  #{player1.name} débute l'assault :"
  player1.attacks(player2)
  break if player2.life_points <= 0
  puts "\n\n  #{player2.name} ne va pas se laisser faire !"
  player2.attacks(player1)
  i += 1
end

if player1.life_points > 0
  puts "\n\n  #{player1.name} a remporté ce combat en #{i} rounds ! Bravo #{player1.name} !\n\n"
else
  puts "\n\n  #{player2.name} a remporté ce combat en #{i} rounds ! Bravo #{player2.name} !\n\n"
end


#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit        