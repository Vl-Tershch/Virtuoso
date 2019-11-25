class AddTableUser < ActiveRecord::Migration[6.0]
  def up
    create_table :user do |t|
      t.string  :login
      t.string  :password
      t.string  :email
      t.string  :telephone_number
      t.integer :role_id
    end
  end

  def down
    drop_table :user
  end
end
