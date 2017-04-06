class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]

    if user.save
      redirect_to '/creators/user_type'
    else
      render :new
    end

  end


  def destroy
    user = User.find(params[:user_id])
    if user.destroy
      redirect_to '/'
    else
      reder :index
    end
  end

end
