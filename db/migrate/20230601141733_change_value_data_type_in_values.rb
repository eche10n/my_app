class ChangeValueDataTypeInValues < ActiveRecord::Migration[7.0]
  def change
    change_column(:values, :value, 'integer USING CAST (value AS integer)')
  end
end
