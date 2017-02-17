class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :bill, :users
end
