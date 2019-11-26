class AddTableUser < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string  :login, null: false
      t.string  :password, null: false
      t.string  :email, null: false
      t.string  :telephone_number
      t.integer :role_id
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
