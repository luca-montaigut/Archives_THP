class ChargesController < ApplicationController
  
  def new
  end
  
  def create
    # Amount in cents
    @cart = current_user.cart
    @amount = (@cart.total * 100).to_i
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

    Order.create(stripe_customer_id: customer.id, user_id: current_user.id)
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
