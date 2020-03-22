class Admin::DashboardController < Admin::ApplicationController

  def index
    @admin_items = Item.all
    @admin_orders = Order.all
    @admin_users = User.all
  end
end
