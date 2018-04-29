class Chara < ApplicationRecord
  has_many :chara_mappings, foreign_key: 'chara_id', dependent: :destroy
end
