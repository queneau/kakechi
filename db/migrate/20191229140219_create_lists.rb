class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string      :item
      t.timestamps null: true
      t.integer     :amount
    end
  end
end
 