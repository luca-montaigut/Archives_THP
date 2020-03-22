class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    user_params =  params.require(:user).permit(:first_name, :last_name, :birthdate, :description, :adress)
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
end
