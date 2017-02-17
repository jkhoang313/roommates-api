class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :amount, :user, :bill_id
end
