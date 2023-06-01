class CreateValues < ActiveRecord::Migration[7.0]
  def change
    create_table :values do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :value_integer

      t.timestamps
    end
  end
end
