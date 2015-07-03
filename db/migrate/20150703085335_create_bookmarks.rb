class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.belongs_to :user, null: false
      t.belongs_to :book, null: false

      t.timestamps null: false
    end
  end
end
