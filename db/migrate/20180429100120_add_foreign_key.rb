class AddForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :chara_mappings, :charas, column: :chara_id
    add_foreign_key :chara_mappings, :images, column: :image_id
  end
end
