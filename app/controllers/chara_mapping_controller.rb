class CharaMappingController < ApplicationController
  def create
    @chara_mapping = CharaMapping.new(chara_mappings_params)
    @chara_mapping.save
    redirect_to controller: 'image', action: 'edit', id: @chara_mapping.image_id
  end

  def destroy
    chara_mapping = CharaMapping.find_by(id: params[:id])
    image_id = chara_mapping.image.id
    chara_mapping.destroy
    redirect_to controller: 'image', action: 'edit', id: image_id
  end

  def chara_mappings_params
    params.require(:chara_mapping).permit(:chara_id, :image_id)
  end
end
