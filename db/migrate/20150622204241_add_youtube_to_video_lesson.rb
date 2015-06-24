class AddYoutubeToVideoLesson < ActiveRecord::Migration
  def change
    add_column :video_lessons, :youtube, :string
  end
end
