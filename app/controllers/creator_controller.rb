class CreatorsController < ApplicationController

  def new
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

end
