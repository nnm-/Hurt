class Post < ActiveRecord::Base
	
	validates :message, :presence => true
	
	default_scope :order => 'posts.created_at DESC'
end
