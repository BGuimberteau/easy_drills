Marten.configure :production do |config|
  config.host = "0.0.0.0"
  config.port = 8000
  config.allowed_hosts = ["easydrills.guimberteau.com"]
  config.use_x_forwarded_proto = true
end
