class User < ApplicationRecord
  belongs_to :home, optional: true
  has_one :bill, through: :home
  has_many :transactions
  has_many :messages
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end
