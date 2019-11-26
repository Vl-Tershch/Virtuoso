class AddTablePostType < ActiveRecord::Migration[6.0]
  def up
    create_table :post_types do |t|
      t.string :title, null: false
      t.timestamps
    end
  end

  def down
    drop_table :post_types
  end
end
