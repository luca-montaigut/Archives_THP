class CommentsController < ApplicationController
  before_action :authenticate_user

  def create

    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.create(content: params[:content], user_id: current_user.id, gossip_id: @gossip.id)
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    if @comment.save 
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:gossip_id]) 
    @comment = Comment.find(params[:id])
    if @comment.update(content: params[:content])
      @comment = Comment.new
      @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact
      @likes = @gossip.likes
      @comments = @gossip.comments
      render 'gossips/show'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    @comment = Comment.find(params[:id])
    if @comment.destroy

      redirect_back(fallback_location: root_path)
    end
  end
end
