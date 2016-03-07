class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :user, index: true, foreign_key: true
    add_column :articles, :edited, :boolean, default: false, null: false
    add_column :articles, :published, :boolean, default: false, null: false
  end
end
