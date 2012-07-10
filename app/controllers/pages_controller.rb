class PagesController < ApplicationController
  before_filter :require_login, :only => :secret
  before_filter :require_admin, :only => :secret

  def home
  end

  def contact
  end

  def about
  end
  
  def secret
  end
  
end
