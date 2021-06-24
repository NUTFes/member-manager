json.extract! user, :id, :name, :mail, :github, :grade_id, :major_id, :bureau_id, :created_at, :updated_at
json.url user_url(user, format: :json)
