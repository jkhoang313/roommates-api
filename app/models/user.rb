class User < ApplicationRecord
  has_secure_password
  belongs_to :home, optional: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
