class VideoLesson < ActiveRecord::Base
	validates :title, presence: true
	validates :tags, presence: true
	validates :youtube, presence: true
	 
end
