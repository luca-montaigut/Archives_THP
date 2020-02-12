class TagsController < ApplicationController
    def create
    puts "$"*60
    puts "create"
    puts params
    puts "$"*60
    @gossip = Gossip.find(params[:gossip_id])
    puts "$"*60
    puts @gossip
    puts "$"*60
    @tag = JoinTableTagGossip.create(tag_id: Tag.find_by(title: params[:tag]), gossip_id: @gossip.id)
    puts "$"*60
    puts @tag
    puts "$"*60
    if @tag.save 
      redirect_to gossip_path(@gossip)
    end
  end

  def edit
    @tag = tag.find(params[:id])
  end

  def update
    @tag = tag.find(params[:id])
    if @tag.update(content: params[:content])
      puts params
      redirect_to :root
    end
  end

  def destroy
    @tag = tag.find(params[:id])
    if @tag.destroy
      redirect_to :root
    end
  end
end
