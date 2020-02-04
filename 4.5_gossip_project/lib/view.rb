# frozen_string_literal: true

# Get gossip parameters
class View

  def create_gossip
    puts "C'est quoi ton potion ?"
    content = gets.chomp.to_s
    puts "Hum intéressant ! Mais t'es qui au fait ?"
    author = gets.chomp.to_s
    return params = {content: content,author: author}
  end

  def index_gossips(all)
    all.each do |gossip|
      puts gossip.author + " : " + gossip.content
    end    
  end
  
  def delete_gossip
    puts "Quel qossip veux tu supprimmer ?"
    print "> "
    index = gets.chomp
    return index
  end
end