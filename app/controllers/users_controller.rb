class UsersController < ApplicationController
	before_filter :authenticate_user!, :only => [:index]
	before_filter :admin_user, :only => :destroy
	
	

 	# get /users
	def index
		@users = User.all
		@title = 'All users'
		
		respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @users }
    end
		
  end
	
	# get /users/id
	def show
		#set_tab :posts
		@post = Post.new if user_signed_in?
		
		begin
			@user = User.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			logger.error "Attempt to access invalid user #{params[:id]}"
			redirect_to home_url, notice: 'Invalid user'
		else
			@title = @user.username
			@posts = @user.posts
			
			respond_to do |format|
				format.html
			end
		end
		#flash[:notice] = "sdf"
	end
	
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_path }
		end
	end		
	
end
