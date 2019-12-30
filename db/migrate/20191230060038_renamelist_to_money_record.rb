class RenamelistToMoneyRecord < ActiveRecord::Migration[6.0]
  def change
    rename_table :lists, :moneyrecords
  end
end
