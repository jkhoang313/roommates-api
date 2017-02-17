class BillSerializer < ActiveModel::Serializer
  attributes :id, :home_id, :total
  has_many :users
end
