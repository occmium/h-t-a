class CreateFriendsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :friends, id: false do |t|
      t.integer :user_id
      t.integer :subscriber_id
    end
    
    add_index(:friends, [:user_id, :subscriber_id], unique: true)
    add_index(:friends, [:subscriber_id, :user_id], unique: true)
  end
end
