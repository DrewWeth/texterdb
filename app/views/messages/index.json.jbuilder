json.array!(@messages) do |message|
  json.extract! message, :id, :content, :recip_name, :recip_number, :sent_count, :sent, :sent_at, :sent_by_name, :sent_by_number, :priority
  json.url message_url(message, format: :json)
end
