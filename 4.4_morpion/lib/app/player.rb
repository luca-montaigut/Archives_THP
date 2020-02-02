# frozen_string_literal: true

# Création des joueurs
class Player
  attr_accessor :name, :symbol, :victories

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @victories = 0
  end
end
