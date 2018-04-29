class Image < ApplicationRecord
  has_many :chara_mappings, foreign_key: 'image_id', dependent: :destroy
end
