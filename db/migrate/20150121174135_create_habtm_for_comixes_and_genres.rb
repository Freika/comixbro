class CreateHabtmForComixesAndGenres < ActiveRecord::Migration
  def change
    create_table :comixes_genres, id: false do |t|
      t.integer :comix_id, index: true
      t.integer :genre_id, index: true
    end
  end
end
