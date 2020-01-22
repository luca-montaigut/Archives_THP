require_relative "../lib/word_counter.rb"

describe "is_in?" do
  it "should return TRUE if the word is in" do
    expect(is_in?("below")).to eq(true)
    expect(is_in?("low")).to eq(true)
  end

  it "should return FALSE if the word is in" do
    expect(is_in?("fuck")).to eq(false)
    expect(is_in?("test")).to eq(false)
  end
end

describe "count_in?" do
  it "count occurencies of the word in string if the word is in the dictionnary" do
    expect(count_in("below","below")).to eq(1)
    expect(count_in("below below below","below")).to eq(3)
  end

  it "didn't count coccurencies of the word in string if the word it's not in the dictionnary" do
    expect(count_in("fuck","below")).to eq(0)
    expect(count_in("fock fuck fucki","below")).to eq(0)
  end
end

describe "hash_return" do
  it "return a hash with the word in dictionnary as index and its occurencies as values" do
    expect(hash_return("below below below")).to eq({"below"=>3})
    expect(hash_return("Howdy partner, sit down! How's it going?")).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end