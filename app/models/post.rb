class Post < ActiveRecord::Base
	
	validates :message, :presence => true

	belongs_to :user
	
	# default_scope :order => 'posts.created_at DESC'
end
