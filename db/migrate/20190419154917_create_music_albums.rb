class CreateMusicAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :music_albums do |t|
      t.string :key
      t.string :chord
      t.string :instrument
      t.string :band
      t.string :album
      t.string :genre

      t.timestamps
    end
  end
end
