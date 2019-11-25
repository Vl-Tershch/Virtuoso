class AddTableRole < ActiveRecord::Migration[6.0]
  def up
    create_table :role do |t|
      t.string :name
    end
  end

  def down
    drop_table :role
  end
end
