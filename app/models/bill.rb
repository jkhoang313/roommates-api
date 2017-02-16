class Bill < ApplicationRecord
  belongs_to :home
  has_many :users, through: :home
  has_many :transactions, through: :users

  def update_changes
    new_total = self.transactions.sum(:amount)
    self.update(total: new_total)
  end
end
