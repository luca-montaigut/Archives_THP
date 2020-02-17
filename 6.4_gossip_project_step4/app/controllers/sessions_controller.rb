class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to '/'
    end
     @user = User.new  
  end

  def create
    if current_user
      redirect_to '/'
    end
    @user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      render 'gossips/index'
    else
      @user = User.new    
      render 'sessions/new'
    end    
  end

  def destroy
    session.delete(:user_id)   
    redirect_to :root 
  end
end
