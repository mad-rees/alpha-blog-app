class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  
  
  def show 
    @articles = @user.articles
  end
  
  def index 
    @pagy, @users = pagy(User.all)
  end
  
  def new 
    @user = User.new
  end 
  
  def edit 

    
  end
  
  def update 

    if @user.update(user_params)
      flash[:notice] = "Your account was updated successfully."
      redirect_to @user
    else 
      render 'edit'
    end
  end 
  
  def create 
    @user = User.new(user_params)
    if@user.save
      session[:user_id] = @user.id
      flash[:notice] = "Congrats!  #{@user.username}, you have successfully signed up for the blog."
      redirect_to @user
    else
      render 'new'
  end
   
end
private
  def user_params 
    params.require(:user).permit(:username, :email, :password)
  end
  
  def set_user
    @user = User.find(params[:id])
  end 
end
