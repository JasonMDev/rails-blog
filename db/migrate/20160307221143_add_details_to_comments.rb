class AddDetailsToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true, foreign_key: true
    add_column :comments, :reviewed, :boolean, default: false, null: false
    add_column :comments, :approved, :boolean, default: false, null: false
  end
end
