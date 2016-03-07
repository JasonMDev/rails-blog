class AddEditorFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :editor, :boolean, default: false, null: false
  end
end
