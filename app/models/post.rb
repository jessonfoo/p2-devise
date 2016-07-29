class Post < ApplicationRecord
	belongs_to :user
  def self.search(query)
		 # where("title ILIKE ?"," %#{query}%")
		 where("content ILIKE ?","%#{query}%")
  end
 #  def owner
 #    self.user_id = current_user.id
	# end
end
