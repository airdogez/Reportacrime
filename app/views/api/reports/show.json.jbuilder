json.album do
  json.id     @report.id
  json.name   @report.name
  json.description  @report.description
  json.category     @report.category
  json.district     @report.district
  json.status       @report.status
  json.details      @report.details
  json.latitude     @report.latitude
  json.longitude    @report.longitude
  json.address      @report.address

  json.user_id @report.user ? @report.user.id : nil
end
