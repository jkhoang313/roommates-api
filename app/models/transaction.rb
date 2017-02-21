class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :bill
  belongs_to :receiver, class_name: "User", optional: true

  def update_balances
    self.payment_type == "Payment" ? payment_added : expense_added
  end

  def payment_added
    self.receiver.update(balance: self.receiver.balance += self.amount.to_f)
    self.user.update(balance: self.user.balance -= self.amount.to_f)
  end

  def expense_added
    @roommates = self.bill.users
    balance_increase = self.amount.to_f/@roommates.count
    @roommates.each do |member|
      member == self.user ? member.update(balance: member.balance -= balance_increase*(@roommates.count-1)) : member.update(balance: member.balance += balance_increase)
    end
  end

  def remove
    self.payment_type == "Payment" ? payment_removed : expense_removed
    self.destroy
  end

  def payment_removed
    self.receiver.update(balance: self.receiver.balance -= self.amount.to_f)
    self.user.update(balance: self.user.balance += self.amount.to_f)
  end

  def expense_removed
    @roommates = self.bill.users
    balance_increase = self.amount.to_f/@roommates.count
    @roommates.each do |member|
      member == self.user ? member.update(balance: member.balance += balance_increase*3) : member.update(balance: member.balance -= balance_increase)
    end
  end
end
