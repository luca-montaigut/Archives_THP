require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true) 
    expect(is_multiple_of_3_or_5?(5)).to eq(true) 
    expect(is_multiple_of_3_or_5?(51)).to eq(true) 
    expect(is_multiple_of_3_or_5?(45)).to eq(true) 
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(52)).to eq(false)   
    expect(is_multiple_of_3_or_5?(37)).to eq(false) 
  end
end


describe "th_sum_of_3_or_5_multiples method" do
  it "should return the sum of multiple of 3 and 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23) 
    expect(sum_of_3_or_5_multiples(11)).to eq(33) 
    expect(sum_of_3_or_5_multiples(3)).to eq(0) 
  end

  it "should return Fuck You when it's not an integer" do
    # je te laisse écrire ces tests-là
    expect(sum_of_3_or_5_multiples(-1)).to eq("Juste des entiers fils !") 
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Juste des entiers fils !")     
    expect(sum_of_3_or_5_multiples('chiffre')).to eq("Juste des entiers fils !")
  end
end
