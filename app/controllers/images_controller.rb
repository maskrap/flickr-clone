class ImagesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @photos = Photo.all
    @users = User.all
  end


end
