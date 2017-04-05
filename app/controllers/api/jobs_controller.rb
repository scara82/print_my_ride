class Api::JobsController < ApplicationController

  def index

  def index
    render json: Jobs.all
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
    job.name = params[:name]
    job.image_url = params[:image_url]
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
    job.name = params[:name]
    job.image_url = params[:image_url]
    if job.save
      render json: job
    else
      render json: job.errors
    end
  end
end
