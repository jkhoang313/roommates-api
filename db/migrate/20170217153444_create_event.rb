class CreateEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :home_id
      t.integer :user_id

      t.timestamps
    end
  end
end
