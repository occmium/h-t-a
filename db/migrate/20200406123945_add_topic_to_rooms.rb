class AddTopicToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :topic, :string
  end
end
