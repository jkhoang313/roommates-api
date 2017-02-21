class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rules, :users
  has_one :bill
  belongs_to :admin

  class BillSerializer < ActiveModel::Serializer
    attributes :id, :home_id, :total, :users

    def users
      object.users.order(:id)
    end
  end

  def users
    object.users.order(:id)
  end
end
