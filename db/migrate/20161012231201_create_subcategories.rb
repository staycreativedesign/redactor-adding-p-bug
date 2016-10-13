class CreateSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.string :image
      t.string :meta_title
      t.string :url_link_name
      t.text :meta_description
      t.text :meta_keywords
      t.string :slug
      t.text :initial_paragraph
      t.text :left_area
      t.text :right_area
      t.timestamps
    end
  end
end
