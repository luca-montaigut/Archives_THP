class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    # Amount in cents
    @event = Event.find(params[:event_id])

    @amount = @event.price * 100

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: "Inscription à #{@event.title}",
      currency: 'eur',
    })


    @guest = Attendance.create(stripe_customer_id: customer.id, user_id: current_user.id, event_id: @event.id)

    puts @guest.errors.full_messages
    redirect_to root_path


    rescue Stripe::CardError => e
    flash[:error] = e.message
    
  end

end
