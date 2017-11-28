class AddUsersToComments < ActiveRecord::Migration[5.1]
  def change
      add_reference :comments, :user, foregin_key: true
  end
end
