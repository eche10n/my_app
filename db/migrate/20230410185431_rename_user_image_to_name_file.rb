class RenameUserImageToNameFile < ActiveRecord::Migration[7.0]
  def change
    rename_column(:images, :image_id, :name)
    rename_column(:images, :user_id, :file)
    rename_column(:images, :value, :ave_value)
  end
end
