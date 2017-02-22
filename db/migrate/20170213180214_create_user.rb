class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :image_url, default: "http://www.vistagardentampa.org/assets/empty_avatar.jpg"
      t.integer :home_id
      t.decimal :balance, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end
end
