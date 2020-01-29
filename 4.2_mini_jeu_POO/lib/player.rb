class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points = 10)
    @name = name
    @life_points = life_points
    if @name == "Merlin l'Enchanteur"
      @life_points = 20
    end
  end

  def show_state
    "> #{@name} a #{@life_points} points de vie"    
  end

  def get_damage(damage)
    @life_points -= damage    
    if @life_points <= 0
      print "\n\n  #{@name} a été tué !"
    end
  end

  def attacks(player)
    print "\n  --> #{@name} attaque #{player.name} !"
    gets.chomp
    damage = compute_damage
    print "  #{player.name} perd #{damage} points de vie"
    player.get_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name, life_points = 100)
    @name = name
    @life_points = life_points
    @weapon_level = 1
  end

  def show_state
    "> #{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"    
  end

  def compute_damage
    return rand(1..6) * @weapon_level
  end

  def search_weapon
    excalibur = rand(1..20)
    if excalibur == 10
    print "  Tu as trouvé Excalibur ! L'arme ultime de niveau 10, quelle chance !"
    @weapon_level = excalibur
    else
    new_weapon_level = rand(1..6)
    puts "  Tu as trouvé une arme de niveau #{new_weapon_level} !"
    if new_weapon_level > @weapon_level
      print "  Youhou ! elle est meilleure que ton arme actuelle ; tu la prends."
      @weapon_level = new_weapon_level
    else
      print "  M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end
end

  def search_health_pack
    searching = rand(1..6)
    if searching == 1
      print "  Tu n'as rien trouvé"
    elsif searching > 1 && searching <= 5
      print "  Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points + 50 >= 100 ? @life_points = 100 : @life_points += 50
    else
      print "  Waow, tu as trouvé un pack de +80 points de vie !"
      @life_points + 80 >= 100 ? @life_points = 100 : @life_points += 80
    end
  end

end