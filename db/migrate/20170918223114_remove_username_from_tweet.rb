class RemoveUsernameFromTweet < ActiveRecord::Migration[5.1]
  def change
    remove_column :tweets, :username, :string
  end
end
