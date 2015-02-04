module Twemojify
  module Utils
    def self.to_size_squared_asset(value)
      value.is_a?(Integer) ? "#{value}x#{value}" : value
    end
  end
end