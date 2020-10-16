class TodoSerializer < ActiveModel::Serializer
  belongs_to :project
  attributes :id, :text, :is_completed
end
