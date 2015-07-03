json.crimes @crimes do |crime|
  json.id     crime.id
  json.name   crime.name
  json.description   crime.description
  json.category      crime.category_id
  json.district      crime.district_id
  json.status        crime.status_id
  json.details       crime.details
  json.latitude      crime.latitude
  json.longitude     crime.longitude
  json.address       crime.address

  json.user_id crime.user ? crime.user.id : nil
end

