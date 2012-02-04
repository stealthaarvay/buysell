Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '163301390448733', '97871723dab084e2f163ed16dab0c3ff', :scope => 'email,offline_access,read_stream', :display => 'page'
end