class Profile < ActiveRecord::Base
	belongs_to :user
  # Remember to create a migration!
end
