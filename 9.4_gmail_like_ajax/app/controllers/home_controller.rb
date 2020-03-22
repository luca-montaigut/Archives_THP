class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
    @categories = Category.all
  end
end
