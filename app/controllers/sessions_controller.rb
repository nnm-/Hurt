class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:username], params[:password])
    if user
      redirect_back_or_to home_url, :notice => "Logged in!"
    else
      flash.now.alert = "User name or password was invalid"
      render action: "new"
    end
  end
  
  def destroy
    logout
    redirect_to home_url, :notice => "Logged out!"
  end
  
end
