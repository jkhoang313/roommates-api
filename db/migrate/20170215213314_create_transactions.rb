class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :title
      t.string :description
      t.decimal :amount, :precision => 8, :scale => 2
      t.integer :user_id
      t.integer :bill_id
      t.string :payment_type
      t.integer :receiver_id

      t.timestamps
    end
  end
end
