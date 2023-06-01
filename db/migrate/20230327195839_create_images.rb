class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :image_id
      t.integer :value

      t.timestamps
    end
  end
end
