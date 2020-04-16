require 'omniauth-google-oauth2'
require 'figaro'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Rails.application.secrets.google_client_id, Rails.application.secrets.google_client_id
end
