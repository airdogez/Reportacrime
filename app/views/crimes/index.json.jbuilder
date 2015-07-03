json.array!(@crimes) do |crime|
  json.extract! crime, :id, :name, :description, :category_id, :user_id, :district_id, :details, :status_id
  json.url crime_url(crime, format: :json)
end