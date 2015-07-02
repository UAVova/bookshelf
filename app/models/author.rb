class Author < ActiveRecord::Base
  has_many :books
  validates_presense_of :first_name
  validates_presense_of :last_name
end
