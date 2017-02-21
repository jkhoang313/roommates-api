class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :amount
  belongs_to :user
  belongs_to :bill

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :image_url
  end

  class BillSerializer < ActiveModel::Serializer
    attributes :id, :total, :users

    def users
      object.users.order(:id)
    end
  end
end
