require_relative "../lib/ceasar_cipher.rb"

describe "ceasar_letter method" do
  it "should return the good letter in downcase" do
    expect(ceasar_letter("a",5)).to eq("f")
    expect(ceasar_letter("t",5)).to eq("y")
    expect(ceasar_letter("w",5)).to eq("b")
  end

  it "should return the good letter in capital"do
    expect(ceasar_letter("W",5)).to eq("B")
  end

  it "shouldn't change space and ponctuation" do
    expect(ceasar_letter(" ",5)).to eq(" ")
    expect(ceasar_cipher("!",5)).to eq("!")
  end
end

describe "ceasar_cipher method" do
  it "should return the good word encrypted" do
    expect(ceasar_cipher("What",5)).to eq("Bmfy")
  end

  it "should return the good string encrypted" do
    expect(ceasar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end
end