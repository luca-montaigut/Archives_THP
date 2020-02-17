class CitiesController < ApplicationController
  before_action :authenticate_user

  def show
    @current_city = City.find(params[:id])
  end
end
