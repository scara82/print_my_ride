class CreateCreators < ActiveRecord::Migration[5.0]
  def change
    create_table :creators do |t|
      t.integer :user_id
      t.boolean :printer
      t.string :printer_model
      t.string :location
      t.boolean :designer
      t.float :rating
      t.text :payment_details
      t.text :description

      t.timestamps
    end
  end
end
