class Post < ActiveRecord::Base
	#attr_accessible :message
	belongs_to :user
	
	validates :message, :presence => true
	validates :user_id, :presence => true
	
	default_scope :order => 'posts.created_at DESC'
end
