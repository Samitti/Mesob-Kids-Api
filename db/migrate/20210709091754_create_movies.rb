class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :thumb_nail
      t.string :video_url

      t.timestamps
    end
  end
end
