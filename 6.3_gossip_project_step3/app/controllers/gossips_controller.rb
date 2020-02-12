class GossipsController < ApplicationController
  def index
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comment = Comment.new
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    @comments = @gossip.comments
  end

  def new
    @gossip = Gossip.new
    @tag = JoinTableTagGossip.new
    @tags = Tag.all
  end

  def create
    @tags = Tag.all
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: params[:user])
    if @gossip.save && params[:tag] != ""
      @tag = JoinTableTagGossip.create(tag_id: Tag.find(params[:tag]).id, gossip_id: @gossip.id) 
      render :index
    elsif @gossip.save && params[:tag] == ""
      render :index
    else
      render :new
    end
  end

  def edit
    @tags = Tag.all
    @gossip = Gossip.find(params[:id])
  end

  def update
    show
    @tag = JoinTableTagGossip.find_by(gossip_id: @gossip.id)
    if @gossip.update(title: params[:title], content: params[:content])
      if params[:tag] == "" && @tag = nil
        puts params
        render :show
      else 
        @tag != nil ? @tag.update(tag_id: Tag.find(params[:tag]).id, gossip_id: @gossip.id) : JoinTableTagGossip.create(tag_id: Tag.find(params[:tag]).id, gossip_id: @gossip.id) 
        puts params
        show
        render :show
      end
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
