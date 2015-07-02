class Author < ActiveRecord::Base
  has_many :books
  validates_presence_of :first_name
  validates_presence_of :last_name

  def name
    "#{first_name} #{last_name}"
  end
end
