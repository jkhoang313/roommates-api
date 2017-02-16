class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :amount, :user
  has_one :user

  def user_name
    object.user.user_name
  end
end
