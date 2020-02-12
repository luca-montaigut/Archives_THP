class GossipsController < ApplicationController
  def index
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comment = Comment.new

    @comments = @gossip.comments
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: params[:user])

    if @gossip.save 
      render :index
    else
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params[:title], content: params[:content])
      puts params
      render :show
    else
      puts params
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy
      render :index
    else
      render :show
    end
  end
end
