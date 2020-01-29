require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/scrapper'
##require 'views/fichier'

ScrappingMairie.new.perform
