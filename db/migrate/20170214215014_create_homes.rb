class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :name
      t.string :rules
      t.integer :admin_id

      t.timestamps
    end
  end
end
