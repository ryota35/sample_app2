class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :score_id
      t.integer :test_id
      t.string :selection_result
      t.string :judgment

      t.timestamps
    end
  end
end
