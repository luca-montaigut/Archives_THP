# frozen_string_literal: true

# Control reaction to user choice
class Controller
  attr_accessor :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all = Gossip.all
    @view.index_gossips(all)
  end
end