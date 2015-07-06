class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id, null: false, default: ""
      t.integer :book_id, null: false, default: ""

      t.timestamps null: false
    end
  end
end
