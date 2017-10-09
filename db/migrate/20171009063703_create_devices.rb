class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :host
      t.string :os
      t.string :maker
      t.string :model
      t.string :_type
      t.string :purpose
      t.boolean :disabled
      t.boolean :deleted
      t.datetime :create_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
