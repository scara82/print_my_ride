class Api::CadController < ApplicationController

  def index
    render json: Cads.all
  end




end
