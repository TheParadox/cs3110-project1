class CreateSongRatings < ActiveRecord::Migration
  def change
    create_table :song_ratings do |t|
			t.float :rating_total;
			t.integer :rating_count;
			t.references :song, index: true, foreign_key: true;

      t.timestamps null: false
    end
  end
end
