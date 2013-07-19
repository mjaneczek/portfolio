# Load the Rails application.
require File.expand_path('../application', __FILE__)

Portfolio::Application.configure do
  config.assets.append_path 'components'
end

# Initialize the Rails application.
Portfolio::Application.initialize!
