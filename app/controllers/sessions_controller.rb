class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to root_url, :notice => "Logged in!"
    else
      redirect_to new_session_url, :notice => "Error"
    end
  end
  def destroy
    redirect_to root_url, :notice => "Logged out!"
  end
end