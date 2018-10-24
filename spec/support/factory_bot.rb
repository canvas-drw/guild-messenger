include ActionDispatch::TestProcess

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.cleaning do
      FactoryBot.lint
    end
  end
end
