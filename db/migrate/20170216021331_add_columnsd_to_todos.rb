class AddColumnsdToTodos < ActiveRecord::Migration[5.0]
  def change
	add_column :todos, :title, :string
	add_column :todos, :description, :text
  end
end
