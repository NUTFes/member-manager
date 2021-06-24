class User < ApplicationRecord
  has_one :grades
  has_one :major
  has_one :bureau
  belongs_to :user_project
  belongs_to :user_technology
end
