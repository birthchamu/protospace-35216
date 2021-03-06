# The  environment is used exclusively to run your application's
#  suite. You never need to work with it otherwise. Remember that
# your  database is "scratch space" for the  suite and is wiped
# and recreated between  runs. Don't rely on the data there!

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  
  config.cache_classes = false

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single . If you are using a tool that
  # preloads Rails for running s, you may have to set it to true.
  config.eager_load = false

  # Configure public file server for s with Cache-Control for performance.
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{1.hour.to_i}"
  }

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in  environment.
  config.action_controller.allow_forgery_protection = false

  # Store uploaded files on the local file system in a temporary directory.
  config.active_storage.service = :

  config.action_mailer.perform_caching = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The : delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations.
  # config.action_view.raise_on_missing_translations = true
end
