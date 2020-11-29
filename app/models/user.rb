class User < ApplicationRecord
  before_save { self.email = email.downcase }
  
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 60 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
