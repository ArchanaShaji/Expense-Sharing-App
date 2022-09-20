class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :currency_name
      t.float :currency_value

      t.timestamps
    end
  end
end
