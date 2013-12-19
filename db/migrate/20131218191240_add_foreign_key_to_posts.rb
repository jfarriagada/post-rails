class AddForeignKeyToPosts < ActiveRecord::Migration
  def change
  	add_index :posts, :username_id
  end
end
