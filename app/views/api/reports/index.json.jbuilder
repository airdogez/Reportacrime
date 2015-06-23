json.reports @reports do |report|
  json.id     report.id
  json.name   report.name
  json.description   report.description
  json.category      report.category_id
  json.district      report.district_id
  json.status        report.status_id
  json.details       report.details
  json.latitude      report.latitude
  json.longitude     report.longitude
  json.address       report.address

  json.user_id report.user ? report.user.id : nil
end

