class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :guest_cart
  before_action :guest_to_user_cart

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
  end

  def guest_cart
    if user_signed_in?
      @cart = current_user.cart
    else
      if session[:cart]
        @cart = Cart.find(session[:cart])
      else
        @cart = Cart.create()
        session[:cart] = @cart.id
      end
    end
  end

  def guest_to_user_cart
    if user_signed_in? && session[:cart]
      guest_cart = Cart.find(session[:cart])
      guest_cart.items.each do |item| 
        puts "#"*50
        puts item
        puts "#"*50
        JoinCartItem.create(cart_id: @cart.id, item_id: item.id)
      end
      JoinCartItem.where(cart_id: session[:cart]).delete_all
      session[:cart] = nil
    end
  end

end
