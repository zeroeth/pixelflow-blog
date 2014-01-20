class BlogPost < ActiveRecord::Base
	acts_as_url :title

	validates :title, :presence => true
	validates :body,  :presence => true

	def to_param
		url
	end
end
