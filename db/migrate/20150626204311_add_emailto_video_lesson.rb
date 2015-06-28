class AddEmailtoVideoLesson < ActiveRecord::Migration
  def change
  	add_column :video_lessons, :permalink, :string
  	add_column :video_lessons, :email, :string
  end
end
