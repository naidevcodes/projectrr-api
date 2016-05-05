ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'

class ActiveSupport::TestCase
  fixtures :all

  Minitest::Reporters.use!(
    Minitest::Reporters::ProgressReporter.new,
    ENV,
    Minitest.backtrace_filter)
end
