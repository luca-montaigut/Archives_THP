#Script de création d'un dossier ruby complet pour un alias shell

#PRISE EN COMMANDE DU NOM DU DOSSIER DE PROJET
abort("mkruby : no space in the folder name, you silly punk !") if ARGV.count > 1
abort("mkruby : a name, god sake, GIVE ME A NAME !") if ARGV.empty?

input = ARGV.join

#CREATION DU DOSSIER
Dir.mkdir(input)

#CREATION DU DOSSIER LIB, DB, LIB/APP ET LIB/VIEWS 
Dir.mkdir(input + "/lib")
Dir.mkdir(input + "/db")
Dir.mkdir(input + "/lib/app")
Dir.mkdir(input + "/lib/views")

#CREATION DU FICHIER APP.RB
file_app = File.open(input + "/app.rb", "w")
file_app << "# frozen_string_literal: true\n\n"
file_app << "require \'bundler\'\n"
file_app << "\nBundler.require\n"
file_app << "\n"
file_app << "\n$:.unshift File.expand_path(\'./../lib\', __FILE__)"
file_app << "\n#require \'app/fichier\'"
file_app << "\n#require \'views/fichier\'"
file_app.close

#CREATION DES FICHIERS CACHES
file_env = File.open(input + "/.env", "w")
file_env.close

file_gitignore = File.open(input + "/.gitignore", "w")
file_gitignore << ".env"
file_gitignore.close

#CREATION DU README
file_readme = File.open(input + "/README.md", "w")
file_readme << "# " + input.upcase
file_readme << "\n"
file_readme << "\n[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)"
file_readme.close

#CREATION DU GEMFILE
Dir.chdir(input)
file_gemfile = File.open("Gemfile", "w")
gem = ["# frozen_string_literal: true\n",
"source \'https://rubygems.org\'\n",
"ruby '2.5.1'\n",
"gem \'csv\'\n",
"gem 'dotenv'\n",
"gem 'pry'\n",
"gem 'rspec'\n",
"gem 'rubocop', '~> 0.57.2'\n"]
gem.each { |i| file_gemfile << i }
file_gemfile.close

#INSTALLATION DES PROGRAMMES
system("git init")
system("rspec --init")
file_spec = File.open("spec/app_spec.rb", "w")
file_spec << "require_relative '../app.rb'"







