class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :starting_date, :ending_date, :home_id, :user_id

  def starting_date
    object.created_at.strftime('%-m/%-d/%y %-I:%M%p')
  end

  def ending_date
    object.created_at.strftime('%-m/%-d/%y %-I:%M%p')
  end
end
