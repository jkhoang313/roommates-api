class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :sent_at
  belongs_to :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :image_url
  end

  def sent_at
    object.created_at.strftime('%-I:%M%p %-m/%-d/%y')
  end
end
