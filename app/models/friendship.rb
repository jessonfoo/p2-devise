class Friendship < ActiveRecord::Base
	belongs_to :user
	belongs_to :friend, :class_name => "User"
  # accepts_nested_attributes_for :user_id, :friend_id
end
