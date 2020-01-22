
def signup
  puts "Choississez un mot de passe :"
  print "> "
  gets.chomp
end

def login(password)
  enter = nil
  while password != enter
    puts "Saisissez le mot de passe pour entrer :"
    print "> "
    enter = gets.chomp
    if enter != password
      puts "Mauvais mot de passe !\n\n"
    end
  end
end


def welcome_screen
  puts "|-----------------------------------------------------------------------|"
  puts "| \"...zZzzz..zZzz...zZz... Hé toi!                                      |"
  puts "|  Ah bah quand même !! t'en as mis du temps pour te rappeler de ton    |"
  puts "|  mot de passe...                                                      |"
  puts "|-----------------------------------------------------------------------|"
  puts "                                                |_______________________________   _/)/)"
  puts "                                                                                  (-.- )"
  puts "                                                                                (\")(\")_o"
  puts "\n\n"
end

def perform
  password = signup  
  login(password)
  welcome_screen
end

perform