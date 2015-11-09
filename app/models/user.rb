class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	# validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
	validates :lname,  presence: true, length: { maximum: 50 }
	validates :fname,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 4 }
	has_secure_password	
end
