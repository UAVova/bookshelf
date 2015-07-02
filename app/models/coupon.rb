class Coupon < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates_presense_of :user
  validates_presense_of :book
end
