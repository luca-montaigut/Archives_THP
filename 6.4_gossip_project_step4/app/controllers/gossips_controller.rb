class GossipsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comment = Comment.new
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact
    @likes = @gossip.likes

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
    @current_tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag : nil}.compact
  end

  def update
    show
    if @gossip.update(title: params[:title], content: params[:content])
      JoinTableTagGossip.create(tag_id: Tag.find(params[:tag]).id, gossip_id: @gossip.id)  unless params[:tag] == ""
      JoinTableTagGossip.find_by(tag_id: Tag.find(params[:delete_tag]).id, gossip_id: @gossip.id).destroy unless params[:delete_tag] == ""
      show
      render :show
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
