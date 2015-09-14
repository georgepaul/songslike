class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string :name
    t.string :image_url
    t.string :gender
    t.string :location 
    t.string :token	
    t.integer :uid
    t.timestamps
    end
  end
end
