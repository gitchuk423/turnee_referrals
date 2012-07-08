class UsersController < ApplicationController

  def create
#    @user = User.new(params[:user])
#    if @user.save
#      sign_in @user
#      flash[:success] = "Welcome to the Sample App!"
#      redirect_to @user
#    else
#      render 'new'
#    end
  end
  
  def index    
    @profile = current_client.profile
    @connections = current_client.connections.all
  end


end
