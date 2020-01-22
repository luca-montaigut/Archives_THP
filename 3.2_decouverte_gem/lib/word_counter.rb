
def is_in?(word)
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  dictionnary.include?(word)
end

def count_in(str,word)
  str.downcase.split.count(word.downcase)
end

def hash_return(str)
  hash = {}
  str.split.each {|word| is_in?(word.downcase) ? hash[word.downcase] = count_in(str,word) : nil }
  return hash
end

hash_return("Howdy partner, sit down! How's it going?")