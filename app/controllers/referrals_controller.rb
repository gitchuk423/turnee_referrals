class ReferralsController < ApplicationController

  def create
    
    @referral = Referral.new(params[:referral])
    if @referral.save
      
      current_client.send_message("Client Referral", @referral.public_comments, ["Ft5mkEUwH7"])
  
      flash[:success] = "Referral sent!"
      redirect_to '/users/index'
    else
      render 'new'
    end
  
  end
  
  def new
    @referral = Referral.new
  end

end