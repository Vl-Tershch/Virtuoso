class AddTablePost < ActiveRecord::Migration[6.0]
  def up
    create_table :posts do |t|
      t.string  :content, null: false
      t.date    :date, null: false
      t.integer :instrument_id
      t.integer :user_id
      t.integer :post_type_id
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
