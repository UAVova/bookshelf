class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.integer :year
      t.text :description
      t.integer :quantity, null: false, default: 0
      t.integer :quantity_available, null: false, default: 0
      t.belongs_to :author, null: false

      t.timestamps null: false
    end

    create_table :books_genres, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :genre, index: true
    end
  end
end
