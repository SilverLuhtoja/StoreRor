class CreateJoinTableProductsOptions < ActiveRecord::Migration[8.0]
  def change
    create_join_table :products, :options do |t|
      t.index :product_id
      t.index :option_id
    end
  end
end
