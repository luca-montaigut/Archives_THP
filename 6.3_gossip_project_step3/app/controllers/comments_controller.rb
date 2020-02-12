class CommentsController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)

  end

  def create
    puts "$"*60
    puts "create"
    puts params
    puts "$"*60
    @gossip = Gossip.find(params[:gossip_id])
    puts "$"*60
    puts @gossip
    puts "$"*60
    @comment = Comment.create(content: params[:content], user_id: User.first.id, gossip_id: @gossip.id)
    puts "$"*60
    puts @comment
    puts "$"*60
    if @comment.save 
      redirect_to :root
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(content: params[:content])
      puts params
      redirect_to :root
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to :root
    end
  end
end
