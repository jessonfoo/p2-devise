class Post < ApplicationRecord
	belongs_to :user
  def self.search(query)
		 # where("title ILIKE ?","#{query}")
		 # where("content ILIKE ?","#{query}")
   #    return [] if query.blank?
    cond_text   = query.split.map{|w| "post_title LIKE ? "}.join(" OR ")
    cond_values = query.split.map{|w| "%#{w}%"}
    all(:conditions =>  (query ? [cond_text, *cond_values] : []))
  end
end
