require 'twemojify/view_helpers'

module Twemojify
  class Railtie < Rails::Railtie
    initializer 'twemojify.view_helpers' do
      ActiveSupport.on_load( :action_view ){ include Twemojify::ViewHelpers }
    end
  end
end