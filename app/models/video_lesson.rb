class VideoLesson < ActiveRecord::Base
	
	before_validation :add_default_permalink

	validates :title, presence: true
	validates_uniqueness_of :title
	validates :tags, presence: true
	validates :youtube, presence: true


	belongs_to :user

private
	def add_default_permalink
		self.permalink ="#{title.parameterize}"
	end

end
