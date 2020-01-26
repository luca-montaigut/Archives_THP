require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_townhall_email(townhall_url)
  page = Nokogiri::HTML(open(townhall_url))   
  nom = page.xpath("//strong[1]/a").text
  mail = page.xpath("//tr[4]/td[2]")[0].text
  mail == "" ? {nom => "aucun mail disponible"} : {nom => mail}
end

def get_townhall_urls
  page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
  page.xpath("//tr/td/p/a/@href").map {|get_townhall_urls| "https://www.annuaire-des-mairies.com" + get_townhall_urls.text.delete_prefix(".")}
end

def scrapping
  scrap = get_townhall_urls.map do |url|
    get_townhall_email(url)
    puts get_townhall_email(url)
    end
  scrap
end

scrapping
