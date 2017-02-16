class Transaction < ApplicationRecord
  belongs_to :user

  def bill
    self.user.bill
  end

  def update_bill
    bill.update(total: bill.total += self.amount)
  end
end
