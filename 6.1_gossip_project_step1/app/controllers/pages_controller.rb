class PagesController < ApplicationController
  def contact
  end

  def gossip
    @current_gossip = Gossip.find(params[:id])
  end

  def team
  end

  def user
    @current_user = User.find(params[:id])
  end

  def welcome
    @gossips = Gossip.all
  end
end
