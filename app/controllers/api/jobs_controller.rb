
class Api::JobsController < ApplicationController

  def index
  end

  def profile
    render json: Job.find(paramas[:id])
  end

  def destroy
    job = Job.find(params[:id])
    if job.destroy
      render json: job
    else
    render json: job.errors
    end
  end

  def create

    job = Job.new
    job.description = params[:description]
    job.image_url = params[:image_url]
    job.material = params[:material]
    job.creator_id = params[:creator_id]
    if job.save
      render json: job
    else
      render json: job.errors

    end
  end

  def edit
    job = Job.find_by(id:params[:id])
    render json: job
  end

  def update
    job = Job.find_by(id:params[:id])
    job.description = params[:description]
    job.image_url = params[:image_url]
    job.material = params[:material]
    job.bid = params[:bid]
    if job.save
      render json: job
    else
      render json: job.errors
    end
  end


end
