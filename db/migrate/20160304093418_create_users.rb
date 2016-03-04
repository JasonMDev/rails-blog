class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :author, default: false, null: false
      t.boolean :moderator, default: false, null: false
      t.boolean :admin, default: false, null: false

      t.timestamps null: false
    end
  end
end
