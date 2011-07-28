Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'AnSYCY4bRcmfUBJODfpmQ', 'GyvfClXeCLXL4NJBKGU7glpXDMfVDBN37pjjeQzFzw'
  provider :facebook, '250050248346256','9735ae616f47b11f109748800d05f877'
end