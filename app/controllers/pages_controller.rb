class PagesController < ApplicationController
  before_filter :require_login, :only => :secret

  def home
  end

  def contact
  end

  def about
  end
  
  def secret
  end
  
end
