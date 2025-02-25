class CreateOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :options do |t|
      t.string :name, null: false
      t.integer :width, null: false
      t.integer :height, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
