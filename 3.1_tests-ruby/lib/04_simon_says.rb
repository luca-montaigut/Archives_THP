def echo(str)
  return str
end

def shout(str)
  return str.upcase  
end

def repeat(str, nb = 2)
  return ([str] * nb).join(" ") 
end

def start_of_word(str,nb)
  return str[0..nb-1]
end

def first_word(str)
  return str.split(" ").first
end

def titleize(str)
  str.capitalize.split.map{|x| x.size >= 4 ? x.capitalize : x}.join(" ")
end
