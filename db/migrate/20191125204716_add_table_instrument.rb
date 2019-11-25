class AddTableInstrument < ActiveRecord::Migration[6.0]
  def up
    create_table :instrument do |t|
      t.string  :title
      t.string  :description
      t.integer :owner_id
    end
  end

  def down
    drop_table :instrument
  end
end
