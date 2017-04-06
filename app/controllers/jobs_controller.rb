class JobsController < ApplicationController

  def new
  end

  def create
    job = Job.new
    job.project_id = params[:project_id]
    job.cad_id = params[:cad_id]
    job.accepted = params[:accepted]
    job.printer_id = params[:printer_id]
    job.completed = params[:completed]

    if job.save
      render :new
    else
      render :create
    end
  end


end
