class CreatorsController < ApplicationController

  def new
    render :user_type_new
  end

  def user_type
    render :user_type
  end

  def create
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
      render :create
    end
  end

  def home
  end

end
