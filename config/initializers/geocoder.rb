Geocoder.configure(
  lookup: :google,
  api_key: Rails.application.credentials.dig(:google, :map, :api_key)
)
