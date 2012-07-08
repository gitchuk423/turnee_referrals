class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def linkedin
    client = LinkedIn::Client.new("m1ugcju590cs", "u97kvOE53ZAygbbV")
    request_token = client.request_token(:oauth_callback => 
                                      "http://#{request.host_with_port}/users/index")
    session[:rtoken] = request_token.token
    session[:rsecret] = request_token.secret

    redirect_to client.request_token.authorize_url

  end

  def destroy
    sign_out
    redirect_to root_path
  end
  
end
