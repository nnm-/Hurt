class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :username, :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  
  validates :username, presence: true, uniqueness: true
  
  validates :password, :length  => { :within => 6..40 }
  
end
