class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :home_id
      t.decimal :total, :precision => 8, :scale => 2, :default => 0
    end
  end
end
