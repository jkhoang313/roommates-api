class Home < ApplicationRecord
  has_many :users
  has_one :bill
  has_many :messages
end
