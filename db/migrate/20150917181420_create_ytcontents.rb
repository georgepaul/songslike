class CreateYtcontents < ActiveRecord::Migration
  def change
    create_table :ytcontents do |t|

      t.timestamps
    end
  end
end
