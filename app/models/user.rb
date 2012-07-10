class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :username, :email, :password, :password_confirmation
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  
  validates :username, presence: true, uniqueness: true, length: { within: 3..30 }
  
  validates :password, length: { within: 6..40 }
  validates :email, format: { with: email_regex }

  has_many :posts, dependent: :destroy
  
end
