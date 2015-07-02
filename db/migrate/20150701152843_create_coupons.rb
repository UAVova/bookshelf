class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.boolean :returned, null: false, default: false
      t.belongs_to :user, null: false
      t.belongs_to :book, null: false

      t.timestamps null: false
    end
  end
end
