class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, length: { minimum: 4, maximum: 16 }, 
                                       format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates_presence_of :first_name, :last_name, :adress
  validates :postal_code, presence: true, :postcode_format => { :country_code => :ua, 
                                                                :message => "entered is not a valid postcode."}
end