def word_counter(cor, dic)
  return 'String is not a string' if !cor.is_a?(String)
  return 'Dictionnary is not an array of strings' if !dic.is_a?(Array) || dic.select { |v| v.is_a?(String) }.length != dic.length
  h = Hash[dic.zip(Array.new(dic.length, 0))]
  h.each_key do |key|
    h[key] = cor.split.select { |w| w.downcase.match?(key) }.length 
  end
  h.select { |_, v| v > 0 }
end

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

#ralenti tout puts word_counter(File.read('../lib/shakespeare.txt'), dictionnary)

#ralenti tout puts word_counter(File.read('../lib/shakespeare.txt'), File.read('swearWords.txt').split)
