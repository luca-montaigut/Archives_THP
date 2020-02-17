class LikeController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new(user_id: current_user.id, content_type: "Gossip", content_id: params[:gossip_id])
    @gossip = Gossip.find(params[:gossip_id])
    @likes = @gossip.likes
    if @likes.map{|like| like.user_id == current_user.id ? like : nil}.compact == []
      @like.save
      redirect_back(fallback_location: root_path)
    else 
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @likes = @gossip.likes
    if @likes.map{|like| like.user_id == current_user.id ? like : nil}.compact != []
      @like = Like.find_by(user_id: current_user.id, content_type: "Gossip", content_id: params[:gossip_id]).delete
      redirect_back(fallback_location: root_path)
    else 
      redirect_back(fallback_location: root_path)
    end
  end
end
