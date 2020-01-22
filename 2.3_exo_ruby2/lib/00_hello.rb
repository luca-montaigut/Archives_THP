def ask_first_name()
  puts "Comment vous appelez vous ?"
  print "> "
  return first_name = gets.chomp.to_s  
end

def say_hello(first_name)
  puts "Bonjour #{first_name}"
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform