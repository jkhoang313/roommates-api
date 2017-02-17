class BillSerializer < ActiveModel::Serializer
  attributes :id, :home_id, :total, :users, :transactions
end
