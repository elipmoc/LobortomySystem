class CreateCharaMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :chara_mappings do |t|
      t.bigint :image_id
      t.bigint :chara_id

      t.timestamps
    end
  end
end
