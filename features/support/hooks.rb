After do |scenario|
  res = http({:method => :get, :path => 'screenshot'})
  image_data = Base64.encode64(res).gsub("\n", "")
  embed("data:image/png;base64,#{image_data}", "image/png")
end