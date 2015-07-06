class Vote < ActiveRecord::Base

  validates_presence_of :rating, :user_id, :book_id
  validates :rating, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }
end
