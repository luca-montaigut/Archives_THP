# frozen_string_literal: true

# Affichage du plateau
class Show
  def show_board(board, players)
    # affiche sur le terminal le plateau de jeu en cours
    puts ''
    puts "              1   2   3        Joueur 1 : #{players[0].symbol}"
    puts "            ┌───┬───┬───┐      #{players[0].name}"
    puts "          A │ #{board.boardcases[0].case_value} │ #{board.boardcases[1].case_value} │ #{board.boardcases[2].case_value} │      🏆 Victoire(s) = #{players[0].victories}"
    puts '            ├───┼───┼───┤      '
    puts "          B │ #{board.boardcases[3].case_value} │ #{board.boardcases[4].case_value} │ #{board.boardcases[5].case_value} │"
    puts "            ├───┼───┼───┤      Joueur 2 : #{players[1].symbol}"
    puts "          C │ #{board.boardcases[6].case_value} │ #{board.boardcases[7].case_value} │ #{board.boardcases[8].case_value} │      #{players[1].name}"
    puts "            └───┴───┴───┘      🏆 Victoire(s) = #{players[1].victories}"
  end
end
