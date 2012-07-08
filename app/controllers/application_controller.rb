class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
    
    def admin_user
      unless current_user.admin?
        redirect_to home_url #, notice: "Error"
      end
    end
    
end
