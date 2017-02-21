class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email,  :image_url, :home_id, :balance
end
