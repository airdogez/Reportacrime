json.user do
  json.id       @user.id
  json.name     @user.name
  json.lastname @user.lastname
  json.email    @user.email
  json.address  @user.address
end
