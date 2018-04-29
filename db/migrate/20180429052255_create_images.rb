class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :serif_name

      t.timestamps
    end
  end
end
