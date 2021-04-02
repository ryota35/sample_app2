class RemoveresultIdFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :result_id, :integer
  end
end
