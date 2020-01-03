class AddDetailsToMoneyRecord < ActiveRecord::Migration[6.0]
  def change
    add_column :moneyrecords, :month, :integer
    add_column :moneyrecords, :day, :integer
  end
end
