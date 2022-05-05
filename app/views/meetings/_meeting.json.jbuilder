json.extract! meeting, :id, :name, :vonage_session_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
