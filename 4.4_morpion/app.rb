# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'
require 'views/show'
require 'views/application'
# require 'views/fichier'

Application.new.perform

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit
