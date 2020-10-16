class ProjectSerializer < ActiveModel::Serializer
  has_many :todos
  attributes :id, :title
end
