require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module PolyclinicManagement
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.exceptions_app = routes
    config.secret_key_base = ENV.fetch('SECRET_KEY_BASE')
  end
end
