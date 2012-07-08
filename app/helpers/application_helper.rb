module ApplicationHelper
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
	 @devise_mapping ||= Devise.mappings[:user]
	end
	
	def title
		base_title = "This Blog makes me cry :'<"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	
end
