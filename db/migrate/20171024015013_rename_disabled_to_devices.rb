class RenameDisabledToDevices < ActiveRecord::Migration[5.1]
  def change
    rename_column :devices, :disabled, :enabled
  end
end
