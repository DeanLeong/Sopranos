class AddImgurlToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :imgurl, :string
  end
end
