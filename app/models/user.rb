class User < ApplicationRecord
  has_secure_password
  has_many :messages
  belongs_to :home, optional: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
