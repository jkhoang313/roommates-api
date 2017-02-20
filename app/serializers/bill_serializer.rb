class BillSerializer < ActiveModel::Serializer
  attributes :id, :home_id, :total, :transactions, :users

  def users
    object.users.order(:id)
  end
end
