class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registerable, :rememberable, :confirmable, :lockable,
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :trackable, :validatable
end
