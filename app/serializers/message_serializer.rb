class MessageSerializer < ActiveModel::Serializer
  attributes :message_content, :user_id
  has_one :user
  class UserSerializer < ActiveModel::Serializer
    attributes :user_name
  end
end
