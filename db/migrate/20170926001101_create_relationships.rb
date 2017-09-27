class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.references :follower, foreign_key: true
      t.references :following, foreign_key: true

      t.timestamps
    end
  end
end
