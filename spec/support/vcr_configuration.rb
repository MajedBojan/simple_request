# frozen_string_literal: true

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'

  require 'webmock'
  config.hook_into :webmock
end
