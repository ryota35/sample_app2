class AddSelectionResultToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :selection_result, :integer
  end
end
