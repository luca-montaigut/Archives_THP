# frozen_string_literal: true

# Gestion d'une partie
class Game
  attr_accessor :current_player, :status, :board, :players

  def initialize(player1, player2)
    # cree 2 joueurs, un board, etc...
    @players = []
    @players << player1
    @players << player2

    @status = 'on going'

    @board = Board.new

    @current_player = @players[0]
  end

  def count_turn
    @board.count_turn
  end

  def turn
    # Affiche le plateau,
    Show.new.show_board(@board, @players)
    # Demande au joueur ce qu'il veut jouer
    @board.play_turn(@current_player, players)
    # Verifie si le joueur a gagne
    print "\n Votre tour est terminé"
    gets.chomp
    game_end if @board.victory? == true || @board.count_turn == 10
    # Passe au joueur suivant
    @current_player = if @current_player == @players[0]
                        @players[1]
                      else
                        @players[0]
                      end
  end

  def new_round
    # Relance une partie : nouveau board mais memes joueurs.
    @board = Board.new
    @status = 'on going'
    puts "\n C'est reparti !"
  end

  def game_end
    # Affiche la fin de partie : vainqueur ou match nul
    system('clear')
    header
    puts '=' * 50
    puts '               Fin de la partie'
    puts '=' * 50

    if @board.victory?
      @current_player.victories += 1
      Show.new.show_board(@board, @players)
      print "\n\n    🏆 #{@current_player.name} a gagné ! Bravo #{@current_player.name} "
      gets.chomp
    else
      Show.new.show_board(@board, @players)
      print "\n\n               Égalité !\n"
    end
    @status = 'game end'
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
end
