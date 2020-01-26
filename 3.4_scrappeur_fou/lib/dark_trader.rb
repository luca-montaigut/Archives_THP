require 'rubygems'
require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/"

def all_coin_symbols(page)
page.xpath("//tr/td[3]/div").map {|name| name.text}
end

def all_coin_values(page)
page.xpath("//tr/td[5]/a").map {|value| value.text.delete("$,")}
end

def perform
  page = Nokogiri::HTML(open(PAGE_URL))   
  results = Hash.new
  results = all_coin_symbols(page).zip(all_coin_values(page))
  results.map {|result| {result[0] => result[1]}}
end

puts perform

