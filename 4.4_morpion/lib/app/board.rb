# frozen_string_literal: true

# Gestion d'un tour
class Board
  attr_accessor :boardcases, :count_turn

  def initialize
    # Quand la classe s'initialize, elle cree 9 instances BoardCases
    # Ces instances sont rangees dans un array
    @boardcases = []
    @boardcases << BoardCase.new('A1')
    @boardcases << BoardCase.new('A2')
    @boardcases << BoardCase.new('A3')
    @boardcases << BoardCase.new('B1')
    @boardcases << BoardCase.new('B2')
    @boardcases << BoardCase.new('B3')
    @boardcases << BoardCase.new('C1')
    @boardcases << BoardCase.new('C2')
    @boardcases << BoardCase.new('C3')
    @count_turn = 1
  end

  def play_turn(player, players)
    valid_turn = 0
    # 1) demande au bon joueur ce qu'il souhaite faire
    while valid_turn.zero?
      puts "\n\n #{player.name}, c'est votre tour."
      puts ' Entrez les coordonnées de la case souhaitée svp'
      print ' > '
      play = gets.chomp.to_s
      # Verifie si la case demandee existe
      if boardcases.count { |square| square.case_id == play } == 1
        # change la BoardCase jouee en fonction de la valeur du joueur (X ou O)
        # normal feature
        @boardcases.each do |square|
          if square.case_id == play && square.case_value == ' '
            square.case_value = player.symbol
            system("clear")
            header
            puts '=' * 50
            puts "                 Tour de #{player.name}"
            puts '=' * 50
            Show.new.show_board(self, players)
            puts "\n\n #{player.name}, c'est votre tour."
            puts ' Entrez les coordonnées de la case souhaitée svp'
            print " > #{play}\n"
            puts " Vous avez joué en #{play}."
            valid_turn += 1
            @count_turn += 1
          elsif square.case_id == play && square.case_value == player.symbol
            puts ' Cette case est déjà à vous !'
          # cheating feature
          elsif square.case_id == play && square.case_value != ' ' && player.name == '3T-King'
            square.case_value = player.symbol
            system("clear")
            header
            puts '=' * 50
            puts "                 Tour de #{player.name}"
            puts '=' * 50
            Show.new.show_board(self, players)
            puts "\n\n #{player.name}, c'est votre tour."
            puts ' Entrez les coordonnées de la case souhaitée svp'
            print " > #{play}\n"
            puts " Vous avez joué en #{play}."
            puts " 🖕 Cheh l'adversaire !"
            valid_turn += 1
            @count_turn += 1
          elsif square.case_id == play && square.case_value != ' '
            puts ' Cette case est déjà prise par votre adversaire !'
          end
        end
      else
        puts " Cette case n'existe pas..."
      end
    end
  end

  def victory?
    # Indique s'il y a un vainqueur ou match nul
    # LIGNES
    # A
    return true if @boardcases[0].case_value == @boardcases[1].case_value && @boardcases[1].case_value == @boardcases[2].case_value && @boardcases[0].case_value != ' '
    # B
    return true if @boardcases[3].case_value == @boardcases[4].case_value && @boardcases[4].case_value == @boardcases[5].case_value && @boardcases[3].case_value != ' '
    # C
    return true if @boardcases[6].case_value == @boardcases[7].case_value && @boardcases[7].case_value == @boardcases[8].case_value && @boardcases[6].case_value != ' '
    # COLONNES
    # 1
    return true if @boardcases[0].case_value == @boardcases[3].case_value && @boardcases[3].case_value == @boardcases[6].case_value && @boardcases[0].case_value != ' '
    # 2
    return true if @boardcases[1].case_value == @boardcases[4].case_value && @boardcases[4].case_value == @boardcases[7].case_value && @boardcases[1].case_value != ' '
    # 3
    return true if @boardcases[2].case_value == @boardcases[5].case_value && @boardcases[5].case_value == @boardcases[8].case_value && @boardcases[2].case_value != ' '
    # DIAGONALES
    return true if @boardcases[0].case_value == @boardcases[4].case_value && @boardcases[4].case_value == @boardcases[8].case_value && @boardcases[0].case_value != ' '
    return true if @boardcases[6].case_value == @boardcases[4].case_value && @boardcases[4].case_value == @boardcases[2].case_value && @boardcases[6].case_value != ' '
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
