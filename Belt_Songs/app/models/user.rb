class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true, length: {minimum: 2}

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  
  has_secure_password
end
