class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :biography
      t.text :quotes

      t.timestamps
    end
  end
end
