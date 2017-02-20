class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :bill

  def update_balances
    @roommates = self.bill.users
    balance_increase = self.amount.to_f/@roommates.count
    @roommates.each do |member|
      member == self.user ? member.update(balance: member.balance -= balance_increase*3) : member.update(balance: member.balance += balance_increase)
    end
  end

  def remove
    @roommates = self.bill.users
    balance_increase = self.amount.to_f/@roommates.count
    @roommates.each do |member|
      member == self.user ? member.update(balance: member.balance += balance_increase*3) : member.update(balance: member.balance -= balance_increase)
    end
    self.destroy
  end
end
