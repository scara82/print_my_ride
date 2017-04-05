class UsersController < ApplicationController

  def new
  end

  def user_type_new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password_digest = params[:password_digest]

    if user.save
      render :user_type
    else
      render :new
    end

  end

  def creator
    creator = Creator.new
    creator.printer = params[:printer]
    creator.printer_model = params[:printer_model]
    creator.location = params[:location]
    creator.designer = params[:designer]
    creator.payment_details = params[:payment_details]
    creator.description = params[:description]

    if creator.save
      render :new
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
