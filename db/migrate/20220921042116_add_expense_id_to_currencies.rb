class AddExpenseIdToCurrencies < ActiveRecord::Migration[7.0]
  def change
    add_column :currencies, :expense_id, :integer
  end
end
