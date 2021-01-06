class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :video_url
      t.string :picture_url
      t.integer :count
      t.timestamps
    end
  end
end
