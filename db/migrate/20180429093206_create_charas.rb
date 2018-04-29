class CreateCharas < ActiveRecord::Migration[5.1]
  def change
    create_table :charas do |t|
      t.string :chara_name

      t.timestamps
    end
  end
end
