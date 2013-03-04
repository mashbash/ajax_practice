class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	has_one :profile
  # Remember to create a migration!
  validates_presence_of :name, :email, :password

  validates :email, format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
