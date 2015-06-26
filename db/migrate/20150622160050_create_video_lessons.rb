class CreateVideoLessons < ActiveRecord::Migration
  def change
    create_table :video_lessons do |t|
      t.string :title
      t.text :description
      t.string :youtube
      t.string :tags

      t.timestamps null: false
    end
  end
end
