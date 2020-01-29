require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "
          _   ___       __    __                               
         / | / (_)___ _/ /_  / /_____ ___  ____ _________      
        /  |/ / / __ `/ __ \\/ __/ __ `__ \\/ __ `/ ___/ _ \\     
       / /|  / / /_/ / / / / /_/ / / / / / /_/ / /  /  __/     
      /_/ |_/_/\\__, /_/ /_/\\__/_/ /_/ /_/\\__,_/_/   \\___/      
              /____/   _______       __    __                  
                      / ____(_)___ _/ /_  / /____  _____       
                     / /_  / / __ `/ __ \\/ __/ _ \\/ ___/       
                    / __/ / / /_/ / / / / /_/  __/ /           
                   /_/   /_/\\__, /_/ /_/\\__/\\___/_/            
                           /____/                               
"

puts "\n#####################################################################"
puts "                    Ladies et Gentlemen,"
puts " Ce soir, un pauvre fou va affronter les champions de la THP Arena !\n"
puts "#####################################################################\n\n"

puts "  Comment t'appelles-tu, toi qui vient mourir en ce lieu ?"
print " > "
hero_name = gets.chomp
while hero_name == "" 
  puts "  Je n'ai pas bien entendu, parle plus fort stp"
  puts "  Alors comment doit-on t'appeller ?"
  print " > "
  hero_name = gets.chomp
end
human_player = HumanPlayer.new(hero_name)
puts "\n  Quoi #{human_player.name} ? ... quel drole de nom !"
print "\n  (Lorsque tu es prêt(e), appuie sur la touche Entrer)"
gets.chomp
enemies = []
player1 = Player.new("Freddy")
player2 = Player.new("Jason")
enemies << player1
enemies <<  player2


i = 1
while human_player.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  puts "\n#####################################################################\n\n"
  puts "   Round n°#{i}                                                     "
  puts "   >#{human_player.show_state}                                      \n\n"
  puts "*********************************************************************"
  puts "      Que souhaites-tu faire ?                                         "
  puts "                                                                         "
  puts "======= Chercher du matériel ? ====================================== "
  puts "      a. Chercher une meilleure arme                                     "
  puts "      s. Chercher de quoi se soigner                                     "
  puts "                                                                         "
  puts "======= Attaquer un ennemi en vue ? ================================= "
  puts "      0. #{player1.show_state}"
  puts "      1. #{player2.show_state}"
  puts "\n#####################################################################\n"
  print "\n    Entre la commande de ton choix : "
  choice = gets.chomp.to_s
  case choice
  when "a"
    puts ""
    human_player.search_weapon
    gets.chomp
  when "s"
    puts ""
    human_player.search_health_pack
    gets.chomp
  when "0"
    puts "\n  #{human_player.name} décide d'attaquer !"
    human_player.attacks(player1)
    gets.chomp
  when "1"
    puts "\n  #{human_player.name} décide d'attaquer !"
    human_player.attacks(player2)
    gets.chomp
  else 
    puts "\n  Mauvaise commande, tu vas te faire défoncer dommage..."
    print "  La prochaine fois tu feras attention !"
    gets.chomp
  end
  break if (player1.life_points <= 0 && player2.life_points <= 0)
  puts "\n  Les ennemis passent à l'attaque !"
  enemies.each {|enemy| enemy.attacks(human_player) if enemy.life_points > 0 && human_player.life_points > 0}
  break if human_player.life_points <= 0
  print "\n\n  Fin du Round n°#{i}. Il te reste #{human_player.life_points} points de vie."
  i += 1
  gets.chomp
end

if human_player.life_points > 0
  puts "\n\n  #{human_player.name} a remporté ce combat en #{i} rounds ! Bravo #{human_player.name} !\n\n"
else
  puts "\n  #{human_player.name} s'est bien fait défoncer\n\n"
end

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit        