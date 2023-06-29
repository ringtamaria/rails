class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :description
      t.string :actions

      t.timestamps
    end
  end
end
