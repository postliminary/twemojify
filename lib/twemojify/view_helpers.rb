module Twemojify
  module ViewHelpers
    def twemojify(text, options = {})
      Twemojify.parse(html_escape(text), options).html_safe
    end
  end
end