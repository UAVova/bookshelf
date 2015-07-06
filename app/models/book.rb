class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :genres
  has_many :deliveries
  has_many :comments
  has_many :votes

  has_attached_file :image,
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true, length: { minimum: 1 }
  validates_inclusion_of :year, :in => 1..2100
  validates :quantity, numericality: {greater_than_or_equal_to: 0}
  validates :quantity_available, numericality: {greater_than_or_equal_to: 0}
  validates_presence_of :author
end
