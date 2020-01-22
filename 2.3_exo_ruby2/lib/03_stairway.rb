def game
  stairs = 10
  user = 0
  compt = 0
  while user != stairs
    #print "Lancer le dé avec la touche \"Entrer\" :"
    #gets.chomp
    launch = (rand(6).succ)
    puts launch
    if launch == 5 || launch == 6
      user +=1
      puts "Vous montez sur la marche n° #{user}\n\n"
    elsif launch == 1 && user != 0
      user = user - 1
      puts "Vous descendez sur la marche n° #{user}\n\n"
    else
      puts "Vous restez sur la marche n° #{user}\n\n"
    end
    compt += 1
  end
  puts "Bravo ! Vous avez gagné en #{compt} coups"
  return compt
end


def average_finish_times
  results = []
  total = 0
  i = 0
  while i != 100
    jeu = game
    results << jeu
    i += 1
  end

  puts results

  results.each do |result|
    total = total + result
  end
  return total
end

average = average_finish_times
puts "En moyenne sur 100 parties, vous gagnerez en : #{average/100} coups"
