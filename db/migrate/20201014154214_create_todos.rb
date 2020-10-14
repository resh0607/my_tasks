class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :text, null: false
      t.boolean :is_completed, default: false
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
