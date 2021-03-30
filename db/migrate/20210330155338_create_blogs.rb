class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :content
      t.string :title
      t.string :author
      t.string :imgurl

      t.timestamps
    end
  end
end
