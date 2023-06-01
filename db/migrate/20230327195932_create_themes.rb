class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.integer :name
      t.integer :qty_items

      t.timestamps
    end
  end
end
