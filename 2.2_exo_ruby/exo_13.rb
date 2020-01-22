puts "Entrez votre année de naissance :"
print "> "
nb = gets.chomp.to_i

while nb != 2020
  puts "#{nb}"
  nb += 1
end

# afficher 2020 comme dernière occurance :
puts "#{nb}"
# note : j'aurai également pu mettre 2021 en paramètre de la boucle