class AddJobIdToBids < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :job_id, :integer
  end
end
