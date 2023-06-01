class ChangeTypeForTabs < ActiveRecord::Migration[7.0]
  def change
    change_column(:themes, :name, :string)
    change_column(:images, :ave_value, :float)
  end
end
