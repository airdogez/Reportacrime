json.crime do
  json.id     @crime.id
  json.name   @crime.name
  json.description  @crime.description
  json.category     @crime.category
  json.district     @crime.district
  json.status       @crime.status
  json.details      @crime.details
  json.latitude     @crime.latitude
  json.longitude    @crime.longitude
  json.address      @crime.address

  json.user_id @crime.user ? @crime.user.id : nil
end
