class RemoveCurrencyIdFromExpense < ActiveRecord::Migration[7.0]
  def change
    remove_column :expenses, :currency_id, :integer
  end
end
