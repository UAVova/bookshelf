class Comment < ActiveRecord::Base
  
  validates_presence_of :content, :user_id, :book_id
  validates :content, length: { minimum: 10, maximum: 500 }
end
