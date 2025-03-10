class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :option_id
      t.string :email
      t.string :delivery_place
      t.string :payment_info

      t.timestamps
    end
  end
end
