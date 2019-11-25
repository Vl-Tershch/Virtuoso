class AddTablePostType < ActiveRecord::Migration[6.0]
  def up
    create_table :post_type do |t|
      t.string :title
    end
  end

  def down
    drop_table :post_type
  end
end
