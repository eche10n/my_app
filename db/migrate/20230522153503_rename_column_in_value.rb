class RenameColumnInValue < ActiveRecord::Migration[7.0]
  def change
    rename_column(:values, :value_integer, :value)
  end

end
