# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'controller'

run ApplicationController
