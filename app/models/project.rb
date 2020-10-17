class Project < ApplicationRecord
  has_many :todos, dependent: :destroy

  validates :title, length: { maximum: 25 },
                    uniqueness: { case_sensitive: false },
                    format: { with: /[[:alnum:]]+/,
                              message: "Add at least one letter or number" }

end
