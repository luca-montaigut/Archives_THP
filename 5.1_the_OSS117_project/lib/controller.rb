# frozen_string_literal: true

require 'gossip'
require 'comment'

# Control user's actions
class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: { gossips: Gossip.all }
  end

  get '/gossips/' do
    redirect '/'
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params[:gossip_author], params[:gossip_content]).save
    redirect '/'
  end

  get '/gossips/:id' do
    erb :show, locals: { gossip: Gossip.find(params['id']), id: params['id'], allcomment: Comment.all }
  end

  post '/gossips/:id' do
    Comment.new(params['id'], params[:comm_content]).save
    redirect '/gossips/' + params['id']
  end

  get '/gossips/:id/edit/' do
    erb :edit, locals: { id: params['id'], gossip: Gossip.find(params['id']) }
  end

  post '/gossips/:id/edit/' do
    Gossip.update(params['id'], params[:gossip_edit_author], params[:gossip_edit_content])
    redirect '/'
  end
end

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit
