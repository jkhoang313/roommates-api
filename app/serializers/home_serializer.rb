class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :bill, :rules, :users
end
