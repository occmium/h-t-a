class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :feed_item, null: false, foreign_key: true
      t.text :message, null: false

      t.timestamps
    end
  end
end
