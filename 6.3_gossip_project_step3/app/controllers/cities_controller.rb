class CitiesController < ApplicationController
  def show
    @current_city = City.find(params[:id])
  end
end
