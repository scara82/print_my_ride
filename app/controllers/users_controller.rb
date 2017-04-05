class UserController < ApplicationController
has_secure_password

  def new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.lastname = params[:lastname]

    if user.save
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:dish_id])
    if user.destroy
      redirect_to '/'
    else
      reder :index
    end
  end

end
