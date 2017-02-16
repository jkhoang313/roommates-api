class User < ApplicationRecord
  has_secure_password
  belongs_to :home, optional: true
  has_one :bill, through: :home
  has_many :transactions

  def full_name
    self.first_name + " " + self.last_name
  end
end
