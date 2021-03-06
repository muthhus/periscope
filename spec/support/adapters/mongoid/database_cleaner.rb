require 'database_cleaner'

DatabaseCleaner['mongoid'].strategy = :truncation

RSpec.configure do |config|
  config.before do
    DatabaseCleaner.clean
  end
end

at_exit do
  DatabaseCleaner.clean
end
