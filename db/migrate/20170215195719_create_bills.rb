class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :home_id
      t.integer :total, default: 0
    end
  end
end
