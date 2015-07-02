class Genre < ActiveRecord::Base
  has_and_belongs_to_many :books
  validates_presense_of :name
end
