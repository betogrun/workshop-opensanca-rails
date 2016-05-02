json.array!(@paticipants) do |paticipant|
  json.extract! paticipant, :id, :name, :event_id
  json.url paticipant_url(paticipant, format: :json)
end
