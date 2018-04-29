class CharaMapping < ApplicationRecord
  belongs_to :image, foreign_key: 'image_id'
  belongs_to :chara, foreign_key: 'chara_id'
end
