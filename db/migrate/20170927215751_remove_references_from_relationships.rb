class RemoveReferencesFromRelationships < ActiveRecord::Migration[5.1]
  def change
    remove_reference :relationships, :following, foreign_key: true
    remove_reference :relationships, :follower, foreign_key: true
  end
end
