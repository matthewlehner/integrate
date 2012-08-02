json.array!(@sponsors) do |json, sponsor|
  json.(sponsor, :id, :name)
  json.url url_with_protocol(sponsor.url)

  json.logo do |json|
    json.img sponsor.logo.thumb('50000@').url
    json.width sponsor.logo.thumb('265x200').width
    json.height sponsor.logo.thumb('265x200').height
  end

  json.logo2x do |json|
    json.img sponsor.logo.thumb('530x400').url
  end
end
