class CreateCads < ActiveRecord::Migration[5.0]
  def change
    create_table :cads do |t|
      t.integer :designer_id
      t.text :description
      t.integer :material_id
      t.string :image_url

      t.timestamps
    end
  end
end
