class ImageSearchController < ApplicationController
  def top
    @images = []
  end

  def search
    @images = Image.where('image_name LIKE ?', "%#{params[:text]}%").all
    render 'top'
  end
end
