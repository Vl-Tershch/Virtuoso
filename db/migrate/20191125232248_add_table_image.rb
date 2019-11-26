class AddTableImage < ActiveRecord::Migration[6.0]
  def up
    create_table :images do |t|
      t.integer :instrument_id
      t.string  :url, null: false
      t.timestamps
    end
  end

  def down
    drop_table :images
  end
end
