class EmailsController < ApplicationController
  before_action :authenticate_user!
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to email_path(@email.id) }
      format.js {}
    end
  end

  def create
    @email = Email.new(object: Faker::Book.title, body: Faker::Lorem.paragraph)

    if @email.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    else
      redirect_to root_path, flash: {error: "Email non créé"}
    end

  end

  def update
    @email = Email.find(params[:id])
    @email.toggle(:read).save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end
end
