class Api::CadsController < ApplicationController

  def index
    render json: Cad.all
  end

end
