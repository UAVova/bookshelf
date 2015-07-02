class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :quantity, null: false, default: 1
      t.belongs_to :book

      t.timestamps null: false
    end
  end
end
