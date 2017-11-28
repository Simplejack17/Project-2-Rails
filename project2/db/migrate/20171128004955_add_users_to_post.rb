class AddUsersToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :user, foregin_key: true
  end
end
