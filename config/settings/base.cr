Marten.configure do |config|
  # IMPORTANT: please ensure that the secret key value is kept secret!
  config.secret_key = "__insecure_fd72e46d18faa58984ae7435489bfaa0b8c08bfebcb6cdc9543d0997912d7510__"

  # Installed applications
  # https://martenframework.com/docs/development/reference/settings#installed_apps
  config.installed_apps = [
    Auth::App,
  ]

  # Application middlewares
  # https://martenframework.com/docs/development/reference/settings#middleware
  config.middleware = [
    Marten::Middleware::Session,
    Marten::Middleware::Flash,
    MartenAuth::Middleware,
    Marten::Middleware::GZip,
    Marten::Middleware::XFrameOptions,
  ]

  # Databases
  # https://martenframework.com/docs/development/reference/settings#database-settings
  config.database do |db|
    db.backend = :sqlite
    db.name = Path["easy_drills.db"].expand
  end

  # Templates context producers
  # https://martenframework.com/docs/development/reference/settings#context_producers
  config.templates.context_producers = [
    Marten::Template::ContextProducer::Request,
    Marten::Template::ContextProducer::Flash,
    Marten::Template::ContextProducer::Debug,
    Marten::Template::ContextProducer::I18n,
  ]

  # Authentication model
  config.auth.user_model = Auth::User
end
