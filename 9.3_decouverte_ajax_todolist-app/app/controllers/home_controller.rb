class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @categories = Category.all
  end
end
