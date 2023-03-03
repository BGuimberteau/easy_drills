Marten.configure :production do |config|
  config.host = "127.0.0.1"
  config.port = 8000
  config.allowed_hosts = ["127.0.0.1"]
end
