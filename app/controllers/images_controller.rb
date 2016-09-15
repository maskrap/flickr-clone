class ImagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @images = Image.all
    @users = User.all
    # @user = User.find(params[:id])
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

  def edit
      @image = Image.find(params[:id])
    end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      flash[:notice] = "Image successfully updated"
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to user_images_path
  end


private
  def image_params
    params.require(:image).permit(:photo, :tag, :title)
  end
end
