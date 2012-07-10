class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :username, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  
  validates :username, presence: true, uniqueness: true
  
end
