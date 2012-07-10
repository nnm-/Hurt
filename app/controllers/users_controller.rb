class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to home_url, :notice => 'Signed up!'
    else
      render :new
    end
  end

  def show
    @post = Post.new if logged_in?

    @user = User.find(params[:id])
    @posts = @user.posts.order('created_at DESC')

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

end
