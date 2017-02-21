class Home < ApplicationRecord
  has_many :users
  has_one :bill
  has_many :messages
  has_many :events
  belongs_to :admin, class_name: "User"
end
