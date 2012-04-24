require 'raddocs'
require 'rack/test'
require 'capybara/rspec'

set :environment, :test

RSpec.configure do |config|
  config.include Capybara::DSL

  config.before do
    Capybara.app = Raddocs
    Raddocs.docs_dir = "spec/fixtures"
  end
end