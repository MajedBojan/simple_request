# frozen_string_literal: true

module SimpleHelper
  module HeadersProcessor
    attr_reader :headers

    def self.perform(headers)
      return {} if headers.nil? || !headers.respond_to?(:to_hash)

      @headers = headers.stringify_keys!

      return @headers unless @headers['Content-Type'].nil?

      { 'Content-Type' => 'application/json' }.merge(@headers)
    end
  end
end
