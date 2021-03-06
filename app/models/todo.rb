class Todo < ApplicationRecord
  belongs_to :project
  
  validates :text, presence: true,
                   length: { maximum: 200 }
  validates :text, uniqueness: { scope: :project_id, case_sensitive: 
                                 false, message: "Todo already exists" }
end
