require File.expand_path('../utils', __FILE__)

module Twemojify
  module Configuration
    VALID_OPTIONS_KEYS = [
        :base,
        :ext,
        :size,
        :class_name
    ]

    DEFAULT_BASE = '//twemoji.maxcdn.com/'.freeze
    DEFAULT_EXT = '.png'.freeze
    DEFAULT_SIZE = '36x36'.freeze
    DEFAULT_CLASS_NAME = 'emoji'.freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def size=(value)
      @size = Utils.to_size_squared_asset(value)
    end

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    def reset
      self.base = DEFAULT_BASE
      self.ext = DEFAULT_EXT
      self.size = DEFAULT_SIZE
      self.class_name = DEFAULT_CLASS_NAME
    end
  end
end