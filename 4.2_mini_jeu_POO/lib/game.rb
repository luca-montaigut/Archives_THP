class Game
  attr_accessor :human_player, :enemies, :players_left, :i

  def initialize(name, players_left)
    @human_player = HumanPlayer.new(name)
    @players_left = players_left
    if @players_left >= 100
      @easter_egg = "ok" 
    end
    @enemies = []
    1.times do |enemy|
      enemy = Player.new(enemy_name_generator, rand(8..15))
      @enemies << enemy 
    end
    @i = 1
  end
  
  def enemy_name_generator
    merlin = rand(1..20)
    if merlin == 10
      return ("Merlin l'Enchanteur")
    else
      men_or_women = rand(1..2)
      if men_or_women == 1
        particule = ["Sire", "Grand Duc", "Prince", "Baron", "Lord", "Chevalier"].sample 
        name = ["Arthur", "Lancelot", "Perceval", "Caradoc", "Yvain", "Gauvain", "Galahad", "Tristan"].sample
        return particule + " " + name
      else
        particule = ["Dame", "Duchesse", "Princesse", "Lady", "Baronne"].sample
        name = ["Cunégonde", "Guenièvre", "Morgane", "Viviane", "Iseut", "Élaine",].sample
        return particule + " " + name
      end
    end
  end

  def kill_players(enemy)
    @players_left -= 1
    @enemies.delete(@enemies[enemy.to_i])
  end

  def is_still_ongoing?
    @human_player.life_points > 0 && @players_left > 0
  end

  def show_players
    puts "       Round n°#{@i}    "
    puts "       >> #{@human_player.name} a #{@human_player.life_points} points de vie et une arme de niveau #{@human_player.weapon_level}"    
    puts "       Il reste #{@players_left} ennemi(s)\n"
  end

  def new_players_in_sight
    if players_left == 0 || @enemies.size >= 4
    else    
      print "\n  Tu guettes l'arrivée de nouveaux adversaires : "
      gets.chomp
      if @enemies.size == @players_left
        print "  ...mais tous les joueurs sont déjà en vue."
        gets.chomp
      else
        arrival = rand (1..6)
        if arrival == 1
          print "  heuresement aucun nouvel adversaire ne vient pour l'instant."
          gets.chomp
        elsif arrival >= 5 && @enemies.size <= (@players_left - 2) 
          print "  -> 2 nouveaux adversaires arrivent !!!"
          2.times do |enemy|
            enemy = Player.new(enemy_name_generator, rand(8..15))
            @enemies << enemy 
          end
          gets.chomp
        else
          print "  -> 1 nouvel adversaire arrive !"
          1.times do |enemy|
            enemy = Player.new(enemy_name_generator, rand(8..15))
            @enemies << enemy 
          end
          gets.chomp
        end
      end
    end
    print "\n  Fin du Round n°#{@i}. Il te reste #{human_player.life_points} points de vie."
    @i += 1
    gets.chomp
  end

  def menu
    puts "\n###########################################################################################\n\n"
    self.show_players
    puts "*******************************************************************************************"
    puts "                       Que souhaitez-vous faire ?                                    "
    puts "                                                                         "
    puts "===== Chercher du matériel ? =============================================================="
    puts "      a. Chercher une meilleure arme                                     "
    puts "      s. Chercher de quoi se soigner                                     "
    puts "                                                                         "
    puts "===== Attaquer un ennemi en vue ? ========================================================="
    i = 0
    @enemies.each do |enemy|
      if enemy.life_points > 0
      puts "      #{i}. #{enemy.name} avec #{enemy.life_points} points de vie"
      end
      i += 1
    end

    puts "\n###########################################################################################\n"
  end

  def menu_choice(choice)
    if choice == "" 
      puts "\n  Mauvaise commande, tu vas te faire défoncer dommage..."
      print "  La prochaine fois tu feras attention !"
      gets.chomp
      puts ""
    elsif choice == "a"
      puts ""
      @human_player.search_weapon
      gets.chomp
    elsif choice == "s"
      puts ""
      @human_player.search_health_pack
      gets.chomp
    elsif (choice.to_i >= 0 && choice.to_i < @enemies.size) && @enemies[choice.to_i].life_points > 0
      puts "\n  #{@human_player.name} décide d'attaquer !"
      @human_player.attacks(@enemies[choice.to_i])
      gets.chomp
      if @enemies[choice.to_i].life_points <= 0
        kill_players(choice.to_i)
      end
    else 
      puts "\n  Mauvaise commande, tu vas te faire défoncer dommage..."
      print "  La prochaine fois tu feras attention !"
      gets.chomp
      puts ""
    end
  end

  def enemies_attack
    if @players_left > 0
      @enemies.each do |enemy| 
        if enemy.life_points > 0 && @human_player.life_points > 0
          enemy.attacks(@human_player) 
        end
      end 
    else
      puts "  #{@human_player.name} a tué tous ses adversaires !"
    end
  end

  def end
    if @human_player.life_points > 0
      puts "\n###########################################################################################\n\n"
      puts "  #{@human_player.name} a remporté le Grand Tournoi du Royaume THP ! Bravo #{@human_player.name} !\n\n"
      puts "
                                .-=============-.
                                \\'-===========-'/
                                _|     .=.     |_
                              ((_|    {{1}}    |_))
                               \\ |     /|\\     | /  
                                \\|    #{@human_player.name.split(" ")[0]}     |/
                                 |   #{@human_player.name.split(" ")[1]}            
                                 \\_  _ '`' _  _/
                                     _`) (`_
                                   _/_______\\_
                                  /___________\\
              "
      if @easter_egg == "ok"
        puts "\n\n  |--------------------------------------------------------------------------|"
        puts "  | \"...zZzzz..zZzz...zZz...Quoi?! T'as battu plus de 100 Chevaliers !!!     |"
        puts "  |  Tu as bien mérité une de mes appartions secrètes ;)                     |"
        puts "  |  Félicitations et à bientôt pour de nouvelles aventures !\"               |"
        puts "  |--------------------------------------------------------------------------|"
        puts "                                                |"
        puts "                                                |"
        puts "                                                |________________   _/)/)"
        puts "                                                                   (-.- )"
        puts "                                                                 (\")(\")_o"
        puts "\n"
      end
    else
      puts "\n###########################################################################################\n\n"
      puts "  #{@human_player.name} s'est bien fait défoncer... la honte...\n\n"
      puts "  
                                         .
                                        -|-
                                         |
                                     .-'~~~`-.
                                   .'         `.
                                   |  R  I  P  |
                                   |    #{@human_player.name.split(" ")[0]}   |         
                                   |   #{@human_player.name.split(" ")[1]}           
                                 \\\\|           |//
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   "
    end    
  end
end


