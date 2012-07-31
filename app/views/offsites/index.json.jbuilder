json.array!(@offsites) do |json, offsite|
  json.(offsite, :id, :name, :details, :starts_at, :ends_at)
  json.(offsite.location, :address, :latitude, :longitude)
end
