class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :users
end
