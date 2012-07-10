class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def not_authenticated
      redirect_to login_url, :notice => "First log in to view this page."
    end
  
    # что-то мне очень не нравится, что я здесь написал - надо будет поменять
    def require_admin
      if current_user
        unless current_user.admin?
          redirect_to home_path, :notice => "You must be an admin!"
        end
      else
        redirect_to home_path
      end    
    end  
   
end
