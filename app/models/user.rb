class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, length: { minimum: 4, maximum: 16 },
                                       format: { with: /\A[a-zA-Z0-9]+\Z/ },
                                       uniqueness: true
  validates_presence_of :first_name, :last_name, :adress
  validates :postal_code, presence: true, :postcode_format => { :country_code => :ua,
                                                                :message => "entered is not a valid postcode."}

  def password_required?
    super && provider.blank?
  end

  def name
    username
  end

  private

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.username = "#{auth.info.first_name}#{auth.info.last_name}"
      user.uid = auth.uid
      user.provider = auth.provider
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

end
