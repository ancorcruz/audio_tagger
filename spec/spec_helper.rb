ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require 'audio_tagger'

RSpec.configure do |config|
end
