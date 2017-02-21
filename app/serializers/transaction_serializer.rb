class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :amount, :payment_type, :receiver, :date_created
  belongs_to :user
  belongs_to :bill

  def receiver
    object.payment_type == "Payment" ? object.receiver.user_name : object.bill.users.order(:id).pluck(:user_name).join(", ")
  end

  def date_created
    object.created_at.strftime('%-m/%-d/%y %-I:%M%p ')
  end

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
