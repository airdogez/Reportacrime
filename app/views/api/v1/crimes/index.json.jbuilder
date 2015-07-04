json.crimes @crimes do |crime|
  json.id     crime.id
  json.name   crime.name
  json.description   crime.description
  json.category_id      crime.category_id
  json.district_id      crime.district_id
  json.status_id        crime.status_id
  json.details       crime.details
  json.latitude      crime.latitude
  json.longitude     crime.longitude
  json.address       crime.address
  json.user_id     crime.user_id
end

