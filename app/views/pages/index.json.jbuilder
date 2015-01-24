json.array!(@pages) do |page|
  json.extract! page, :id, :comix_id, :address
  json.url page_url(page, format: :json)
end
