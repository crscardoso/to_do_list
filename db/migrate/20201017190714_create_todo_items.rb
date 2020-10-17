class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :content, null: false
      t.references :todo_list, foreign_key: true, index: true
    end
  end
end
