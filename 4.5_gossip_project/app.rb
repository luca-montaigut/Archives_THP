# frozen_string_literal: true

require 'bundler'

Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'router.rb'
require 'controller.rb'
require 'gossip.rb'
require 'view.rb'
#require 'views/fichier'

Router.new.perform