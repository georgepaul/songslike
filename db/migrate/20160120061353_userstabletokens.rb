class Userstabletokens < ActiveRecord::Migration
  def change
  	  	add_column :profiles, :facebook_token, :string

  end
end
