class AddUsernameIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :username_id, :integer
  end
end
