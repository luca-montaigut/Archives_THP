class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @item = Item.find(params[:item_id])
    @comment = Comment.create(content: params[:content], user_id: current_user.id, item_id: @item.id)
    if @comment.save 
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @item = Item.find(params[:item_id]) 
    @comment = Comment.find(params[:id])
    if @comment.update(content: params[:content])
      @comment = Comment.new
      @comments = @item.comments
      render 'items/show'
    end
  end

  def destroy
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_back(fallback_location: root_path)
    end
  end
end
