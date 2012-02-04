Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['163301390448733'], ENV['97871723dab084e2f163ed16dab0c3ff']
end