# frozen_string_literal: true

# Interface utilisateur
class Application
  def perform
    header
    # Noms des Joueurs
    puts " Entrez un nom pour le Joueur 1 (#{'O'.colorize(:red)})"
    name = player_name
    player1 = Player.new(name, 'O'.colorize(:red))

    puts " Entrez un nom pour le Joueur 2 (#{'X'.colorize(:blue)})"
    name = player_name
    player2 = Player.new(name, 'X'.colorize(:blue))

    puts "\n Bienvenue #{player1.name} et #{player2.name}."
    print " Appuyez sur \"Entrer\" lorsque vous êtes prêt(e)s."
    gets.chomp
    # Partie
    game = Game.new(player1, player2)

    while game.status == 'on going'
      system('clear')
      header
      puts '=' * 50
      puts "                 Tour de #{game.current_player.name}"
      puts '=' * 50
      game.turn
      while game.status == 'game end'
        puts "\n Voulez-vous faire une autre partie ?"
        puts ' 1. Oui'
        puts ' 2. Non'
        print ' > '
        new_game = gets.chomp.to_s
        if new_game == '1'
          game.new_round
        else
          game.status = 'quit'
        end
      end
    end
    puts "\n 👋 Au revoir #{player1.name} et #{player2.name} !\n\n"
  end

  def header
    puts ''
    puts "\n"
    puts '    ___  ___                 _'
    puts '    |  \\/  |                (_)'
    puts '    | .  . | ___  _ __ _ __  _  ___  _ __'
    puts '    | |\\/| |/ _ \\| \'__| \'_ \\| |/ _ \\| \'_ \\'
    puts '    | |  | | (_) | |  | |_) | | (_) | | | |'
    puts '    \\_|  |_/\\___/|_|  | .__/|_|\\___/|_| |_|'
    puts '                      | |'
    puts '                      |_|'
    puts ''
  end

  def player_name
    name = 0
    while name == 0 || name == ''
      print ' > '
      name = gets.chomp.to_s
      if name == '0'
        easter_egg
        name = 0
      elsif name == ''
        puts " Je n'ai pas bien compris, veuillez entrer un nom svp"
      end
    end
    name
  end

  def easter_egg
    puts "\n\n  |-------------------------------------------------------------|"
    puts '  | "...zZzzz..zZzz...zZz...Hum ?! Tu vas jouer au morpion ?    |'
    puts '  | J\'ai rencontré un mec super fort une fois, il pouvait jouer |'
    puts '  | sur une case déjà prise ! Son pseudo c\'était 3T-King"       |'
    puts '  |-------------------------------------------------------------|'
    puts '                                           |'
    puts '                                           |'
    puts '                                           |_____________   _/)/)'
    puts '                                                           (-.- )'
    puts "                                                         (\")(\")_o\n"
  end
end
