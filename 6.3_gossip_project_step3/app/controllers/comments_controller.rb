class CommentsController < ApplicationController

  def create

    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.create(content: params[:content], user_id: User.first.id, gossip_id: @gossip.id)
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    if @comment.save 
      @comments = @gossip.comments
      render 'gossips/show'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:gossip_id])
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    @comment = Comment.find(params[:id])
    if @comment.update(content: params[:content])
      @comments = @gossip.comments
      render 'gossips/show'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @tags = JoinTableTagGossip.all.map{|join| join.gossip_id == @gossip.id ? join.tag.title : nil}.compact    
    @comment = Comment.find(params[:id])
    if @comment.destroy
      @comments = @gossip.comments
      render 'gossips/show'
    end
  end
end
