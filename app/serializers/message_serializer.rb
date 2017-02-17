class MessageSerializer < ActiveModel::Serializer
  attributes :content, :user, :id, :created_at
  class UserSerializer < ActiveModel::Serializer
    attributes :user_id, :user_name, :image_url
  end
end
