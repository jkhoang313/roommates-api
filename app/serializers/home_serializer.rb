class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rules, :users
  has_one :bill

  class BillSerializer < ActiveModel::Serializer
    attributes :id, :home_id, :total, :users
  end

  def users
    object.users.order(:id)
  end
end
