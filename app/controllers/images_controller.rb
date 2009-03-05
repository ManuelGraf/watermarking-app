class ImagesController < ApplicationController
  def index
    @images = Image.find :all
  end

  def show
    @image = Image.find params[:id]
  end

  def upload
    @image = Image.new
  end

  def create
    Image.create params[:image]
    redirect_to images_path
  end

  def destroy
    Image.find(params[:id]).destroy
    redirect_to images_path
  end

end
