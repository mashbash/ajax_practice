class Profile < ActiveRecord::Base
	belongs_to :user
	attr_accessible :group, :user_id
  # Remember to create a migration!
end
