module ApplicationHelper
	def title
		base_title = "This Blog makes me cry :'<"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
end
