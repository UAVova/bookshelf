class Delivery < ActiveRecord::Base
  belongs_to :book
  validates_presence_of :books
  validates :quantity, numericality: {greater_than_or_equal_to: 1}
end
