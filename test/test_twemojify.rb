require 'test_helper'

class TwemojifyTest < Minitest::Test
  def test_default_parsing
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify::DEFAULT_BASE + '36x36/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end
end