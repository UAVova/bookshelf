class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.boolean :returned?
      t.belongs_to :user
      t.belongs_to :book

      t.timestamps null: false
    end
  end
end
