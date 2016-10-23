ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def Setup
    OmniAuth.config.test_mode = therubyracer

    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      provider: 'github', uid: '123456', info {email: 'a@b.com', name: 'Ada'}
      })

  # Add more helper methods to be used by all tests here...
end
