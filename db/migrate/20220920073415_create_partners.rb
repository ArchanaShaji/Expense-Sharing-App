class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :partner_name

      t.timestamps
    end
  end
end
