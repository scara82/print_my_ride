class SessionController < ApplicationController
  def new
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/'
    else
      redirect '/'
    end
  end

  def destroy
    
  end
end
