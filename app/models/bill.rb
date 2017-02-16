class Bill < ApplicationRecord
  belongs_to :home
  has_many :users, through: :home
  has_many :transactions, through: :users
end
