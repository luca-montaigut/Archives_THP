require_relative 'event.rb'
require 'time'

class EventCreator < Event

  def initialize
    @title = ask_title
    @start_date = Time.parse(ask_date)
    @duration = ask_duration
    @attendees = ask_attendees
  end

  def ask_title
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    gets.chomp.to_s
  end

  def ask_date
    puts "Super. Quand aura-t-il lieu"
    print "> "
    gets.chomp.to_s
  end

  def ask_duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    gets.chomp.to_i    
  end

  def ask_attendees
    puts "Géniral. Qui va participer ? Balance leurs emails"
    print "> "
    gets.chomp.split
  end
end