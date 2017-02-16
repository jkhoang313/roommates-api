class Transaction < ApplicationRecord
  belongs_to :user

  def bill
    self.user.bill
  end
end
