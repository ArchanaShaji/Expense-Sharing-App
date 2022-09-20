class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :partner_id
      t.integer :category_id
      t.integer :currency_id
      t.float :amount

      t.timestamps
    end
  end
end
