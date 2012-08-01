json.array!(@offsites) do |json, offsite|
  json.(offsite, :id, :name, :details)
  json.starts_at I18n.localize(offsite.starts_at)
  json.ends_at I18n.localize(offsite.ends_at)
  json.(offsite.location, :address, :latitude, :longitude)
end
