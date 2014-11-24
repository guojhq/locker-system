json.array!(@registrations) do |registration|
  json.extract! registration, :id, :numberOfSemesters, :termsAccepted
  json.url registration_url(registration, format: :json)
end
