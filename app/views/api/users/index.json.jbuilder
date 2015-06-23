json.users @users do |user|
  json.id       user.id
  json.name     user.name
  json.lastname user.lastname
  json.email    user.email
  json.address  user.address
  json.district user.district_id
  json.phone    user.phone
end
