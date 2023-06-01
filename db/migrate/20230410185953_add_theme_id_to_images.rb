class AddThemeIdToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :theme_id, :integer
  end
end
