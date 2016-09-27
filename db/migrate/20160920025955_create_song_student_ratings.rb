class CreateSongStudentRatings < ActiveRecord::Migration
  def change
    create_table :song_student_ratings do |t|
			t.integer :rating
			t.references :song, index: true, foreign_key: true
			t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
