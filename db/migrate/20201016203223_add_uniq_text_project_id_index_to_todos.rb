class AddUniqTextProjectIdIndexToTodos < ActiveRecord::Migration[5.2]
  def change
    add_index :todos, [:text, :project_id], unique: true
  end
end
