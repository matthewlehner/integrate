json.array!(@galleries) do |json, gallery|
  json.(gallery, :id, :name, :phone, :email, :website, :hours, :festival_hours, :description, :exhibition_description)
  json.photo gallery.photo.url
  json.url url_with_protocol(gallery.website)
  json.(gallery.location, :address, :latitude, :longitude)
end
