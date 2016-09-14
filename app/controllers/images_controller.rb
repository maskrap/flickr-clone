class ImagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = current_user.images.new
  end


  def create
    @image = current_user.images.new(image_params)
    if @image.save
      redirect_to root_path
    else
      binding.pry
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:photo, :tag, :title)
  end
end
