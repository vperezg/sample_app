class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save      
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
end
