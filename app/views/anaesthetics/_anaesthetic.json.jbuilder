json.extract! anaesthetic, :id, :user_id, :patient_id, :date_and_time, :intervention, :indication, :no_attempts, :complications, :created_at, :updated_at
json.url anaesthetic_url(anaesthetic, format: :json)