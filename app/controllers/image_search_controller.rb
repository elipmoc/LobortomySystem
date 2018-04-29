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
    if (params[:colum][:chara_id].empty? == false)
      chara_mapping_image_ids = CharaMapping.where(chara_id: params[:colum][:chara_id]).select('image_id')
      @images = @images.where(id: chara_mapping_image_ids)
    end
    render 'top'
  end
end
