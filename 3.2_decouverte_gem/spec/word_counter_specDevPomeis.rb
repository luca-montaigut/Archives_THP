require_relative '../lib/word_counter'

describe 'the word_counter method' do
  it 'should return a hash for a word' do
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
  end

  it 'should return a hash for a phrase' do
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end

  it 'should not work for some cases' do
    expect(word_counter(1,"tes")).to eq('String is not a string')
    expect(word_counter("test",1)).to eq('Dictionnary is not an array of strings')
  end
end
