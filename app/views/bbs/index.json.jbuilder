json.array!(@bbs) do |bb|
  json.extract! bb, :id, :name, :text, :time
  json.url bb_url(bb, format: :json)
end
