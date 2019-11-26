class AddTableInstrument < ActiveRecord::Migration[6.0]
  def up
    create_table :instruments do |t|
      t.string  :title, null: false
      t.string  :description
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :instruments
  end
end
