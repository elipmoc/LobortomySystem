class AddSerifRubyName < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :serif_ruby_name, :string
  end
end
