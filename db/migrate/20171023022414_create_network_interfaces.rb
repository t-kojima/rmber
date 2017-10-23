class CreateNetworkInterfaces < ActiveRecord::Migration[5.1]
  def change
    create_table :network_interfaces do |t|
      t.string :ip_address
      t.string :subnet_mask
      t.string :mac_address
      t.string :device_id
      t.integer :sort_key

      t.timestamps
    end
  end
end
