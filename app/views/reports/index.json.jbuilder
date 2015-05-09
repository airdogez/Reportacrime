json.array!(@reports) do |report|
  json.extract! report, :id, :name, :description, :category_id, :user_id, :district_id, :details, :status_id
  json.url report_url(report, format: :json)
end
