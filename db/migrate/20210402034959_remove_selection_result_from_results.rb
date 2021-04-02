class RemoveSelectionResultFromResults < ActiveRecord::Migration[5.2]
  def change
    remove_column :results, :selection_result, :string
  end
end
