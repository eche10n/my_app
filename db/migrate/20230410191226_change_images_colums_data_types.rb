class ChangeImagesColumsDataTypes < ActiveRecord::Migration[7.0]
  def change
    change_column(:images, :name, :string)
    change_column(:images, :file, :string)
  end
end
