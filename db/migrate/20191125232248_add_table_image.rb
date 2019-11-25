class AddTableImage < ActiveRecord::Migration[6.0]
  def up
    create_table :image do |t|
      t.integer :instrument_id
      t.string  :url
    end
  end

  def down
    drop_table :image
  end
end
