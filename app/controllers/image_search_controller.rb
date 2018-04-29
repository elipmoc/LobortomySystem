class ImageSearchController < ApplicationController
  def top
    @images = []
  end

  def search
    if(params[:colum][:name] == 'image_name')
      @images = Image.where('image_name LIKE ?', "%#{params[:text]}%").all
    elsif (params[:colum][:name] == 'serif_name')
      @images = Image.where('serif_name LIKE ?', "%#{params[:text]}%").all
    end
    render 'top'
  end
end
