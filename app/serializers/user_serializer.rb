class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :user_name, :home, :image_url
  belongs_to :home
end
