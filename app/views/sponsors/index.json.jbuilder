json.array!(@sponsors) do |json, sponsor|
  json.(sponsor, :id, :name)
  json.logo sponsor.logo.thumb('265x200').url
  json.logo2x sponsor.logo.thumb('530x400').url
  json.url url_with_protocol(sponsor.url)
end
