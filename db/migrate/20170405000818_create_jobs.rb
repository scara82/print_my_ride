class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :project_id
      t.integer :cad_id
      t.boolean :accepted
      t.integer :printer_id
      t.boolean :completed

      t.timestamps
    end
  end
end
