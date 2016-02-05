class Userstablefacebookid < ActiveRecord::Migration
  def change

  	add_column :profiles, :facebook_id, :string

  end
end
