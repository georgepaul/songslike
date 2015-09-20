class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
	t.string :name
    t.string :image_url
    t.string :created_by, :default => 1
    t.timestamps
    end
  end
end
