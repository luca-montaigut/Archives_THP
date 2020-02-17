class UsersController < ApplicationController
  
  def new
    if current_user
      redirect_to '/'
    end
    @user = User.new
    @age = [7..77]
  end

  def create
    if current_user
      redirect_to '/'
    end
    @city = City.find_by(name: params[:city])

    if @city == nil
      @city = City.create(name: params[:city])
    end

    @user = User.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      description: params[:description],
      email: params[:email],
      password: params[:password], 
      password_confirmation: params[:passwordconfirm],
      age: params[:age],
      city_id: @city.id
    )

    if @user.save
      log_in(@user)
      render 'gossips/index'
    else
      render :new
    end
  end

  def show
    @current_user = User.find(params[:id])
  end
end
