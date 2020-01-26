require_relative '../lib/dark_trader.rb'
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

# COMMENTER LA COMMANDE DE LANCEMENT ET LE/LES PUTS POUR EFFECTUER LES TESTS

describe "all_coin_symbols method" do
  it "should return and array of of coin symbol" do
    expect(all_coin_symbols(page)).to be_an_instance_of(Array)
    expect(all_coin_symbols(page)).to include("BTC")
  end

  it "shouldn't have nil value" do
    expect(all_coin_symbols(page)).not_to include(nil)
  end
end

describe "all_coin_values method" do
  it "should return and array of of coin value" do
    expect(all_coin_values(page)).to be_an_instance_of(Array)
    expect(all_coin_values(page).size).to eq(all_coin_symbols(page).size)
  end

  it "shouldn't have nil value" do
    expect(all_coin_symbols(page)).not_to include(nil)
  end
end

describe "perform method" do
  it "should return an array of hash" do
  expect(perform()).to be_an_instance_of(Array)
  expect(perform()).to include(Hash)
  end
  it "shouln't have nil value" do
  expect(perform()).not_to include(nil)
  end
end