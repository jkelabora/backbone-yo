class ApplicationsController < ApplicationController

  respond_to :json

  def index

    p "here!!"
    p "----#{Application.count}"
    #sleep 5
    respond_with Application.all

  end

  def show
    respond_with Application.find(params[:id])
  end

  def create
    respond_with Application.create(params[:application])
  end

  def update
    respond_with Application.update(params[:id], params[:application])
  end

  def destroy
    respond_with Application.destroy(params[:id])
  end
  
end
