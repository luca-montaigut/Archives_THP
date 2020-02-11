class PagesController < ApplicationController
  def contact
  end

  def team
  end

  def user
    @current_user = User.find(params[:id])
  end

end
