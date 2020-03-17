json.extract! apply, :id, :name, :age, :position, :phone, :string, :email,  :created_at, :updated_at
json.url apply_url(apply, format: :json)
