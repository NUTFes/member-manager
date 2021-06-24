class Technology < ApplicationRecord
  belongs_to :user_technology
  belongs_to :project_technology
end
