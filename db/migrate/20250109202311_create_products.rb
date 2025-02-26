class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :width
      t.integer :height
      t.string  :short_description
      t.string  :long_description

      t.timestamps
    end
  end
end
