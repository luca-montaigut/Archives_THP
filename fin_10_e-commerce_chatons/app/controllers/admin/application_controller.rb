class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!
  before_action :only_admin
  
  layout 'admin'

  def only_admin
    if !user_signed_in? || !current_user.is_admin
      redirect_to root_path, flash: {error: "Vous n'avez pas les droits suffisants !"}
    end
  end
end