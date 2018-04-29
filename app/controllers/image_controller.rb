class ImageController < ApplicationController
  def index
    @images = Image.all.order("updated_at DESC")
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update_attributes(images_params)
    render 'show'
  end

  def images_params
    params.require(:image).permit(:serif_name, :serif_ruby_name)
  end
end
