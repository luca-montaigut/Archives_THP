def half_pyramid(etage)
  i = 1
  puts "Voici la pyramide :"
  while i != (etage+1) 
    puts " "*(etage-i)+"#"*i
    i += 1
  end 
end

def full_pyramid(etage)
  i = 1
  puts "Voici la pyramide :"
    while i/2 != (etage+1) 
      if i % 2 != 0
      puts " "*(etage-i/2)+"#"*i
      end
    i += 1
    end  
end

def wtf_pyramid(etage)
  i = 1
  puts "Voici la pyramide :"
    while i != etage 
      if i % 2 != 0
      puts " "*(etage/2-i/2)+"#"*i
      end
      i += 1
    end
    j = i
    while j != 0 
      if j % 2 != 0
      puts " "*(etage/2-j/2)+"#"*j
      end
      j = j - 1
    end  
end

def perform
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage(s) veux-tu ?"
  print "> "
  etage = gets.chomp.to_i
  half_pyramid(etage)
end

perform

