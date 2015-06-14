class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_action :require_user_signed_in
  respond_to :html

  def index
    # @galleries = Gallery.all
    # respond_with(@galleries)
    @urls = ['https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.001.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.002.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.003.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.004.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.005.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.006.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.007.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.008.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.009.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.010.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.011.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.012.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.013.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.014.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.015.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.016.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.017.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.018.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.019.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.020.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.021.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.022.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.023.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.024.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.025.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.026.jpg',
      'https://s3.amazonaws.com/octohowbucket/Octoblu+Platform+Overview+Images.027.jpg']

  end

  def show
    respond_with(@gallery)
  end

  def new
    @gallery = Gallery.new
    respond_with(@gallery)
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.save
    respond_with(@gallery)
  end

  def update
    @gallery.update(gallery_params)
    respond_with(@gallery)
  end

  def destroy
    @gallery.destroy
    respond_with(@gallery)
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:name, :picture, :index)
    end

end
