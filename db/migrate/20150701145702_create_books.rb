class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.belongs_to :author

      t.timestamps null: false
    end

    create_table :books_genres, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :genre, index: true
    end
  end
end
