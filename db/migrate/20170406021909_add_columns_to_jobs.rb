class AddColumnsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :user_id, :integer
    add_column :jobs, :description, :text
    add_column :jobs, :job_img, :string
    add_column :jobs, :material, :string
  end
end
