class RemoveColumns < ActiveRecord::Migration[5.1]
  def up
    remove_column :devices, :create_at
    remove_column :devices, :update_at
      end

  def down
    add_column :devices, :create_at, :datetime
    add_column :devices, :update_at, :datetime
  end
end
