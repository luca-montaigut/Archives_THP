require_relative '../lib/mairies_christmas.rb'

# COMMENTER LA COMMANDE DE LANCEMENT ET LE/LES PUTS POUR EFFECTUER LES TESTS

describe "get_townhall_email method" do
  it "should return an hash with name and mail" do
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/ableiges.html")).to be_an_instance_of(Hash)
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/ableiges.html")).to eq ({"ABLEIGES"=>"mairie.ableiges95@wanadoo.fr"})
  end

  it "shouldn't return empty value" do
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/menouville.html")).to eq ({"MENOUVILLE"=>"aucun mail disponible"})
  end
end

describe "get_townhall_urls method" do
  it "should return an array of url" do
    expect(get_townhall_urls()).to be_an_instance_of(Array)
    expect(get_townhall_urls()).to include("https://www.annuaire-des-mairies.com/95/menouville.html")
  end
  it "shouldn't include nil or empty values" do
    expect(get_townhall_urls()).not_to include(nil)
    expect(get_townhall_urls()).not_to include("")
  end
end

=begin A DECOMMENTER SI TU ES MOTIVE(E) POUR UN TEST LONG (1 À 2 MIN), COMMENTER LIGNE 21 ET 26 DU PROGRAMME POUR EVITER LES INTERFERENCES > spoiler alert : ça passe ;)

describe "srapping method" do
  it "should return an array of hash" do
    expect(scrapping()).to be_an_instance_of(Array)
    expect(scrapping()).to include(Hash)
  end
  it "shouln't have nil value" do
    expect(scrapping()).not_to include(nil)
    end
end

=end