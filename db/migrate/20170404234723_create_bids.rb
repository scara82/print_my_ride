class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.string :creator_id
      t.boolean :design
      t.boolean :print
      t.float :price

      t.timestamps
    end
  end
end
