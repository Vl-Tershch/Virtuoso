class AddTablePost < ActiveRecord::Migration[6.0]
  def up
    create_table :post do |t|
      t.string  :content
      t.date    :date
      t.integer :instrument_id
      t.integer :author_id
      t.integer :post_type
    end
  end

  def down
    drop_table :post
  end
end
