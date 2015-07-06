class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.float :rating
      t.string :user_id, null: false, default: ""
      t.string :book_id, null: false, default: ""

      t.timestamps null: false
    end
  end
end
