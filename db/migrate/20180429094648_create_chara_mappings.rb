class CreateCharaMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :chara_mappings do |t|
      t.integer :image_id
      t.integer :chara_id

      t.timestamps
    end
  end
end
