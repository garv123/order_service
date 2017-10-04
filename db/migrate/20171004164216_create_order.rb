class CreateOrder < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :invoice_no
      t.string :name
      t.timestamps
    end
  end
end
