require 'test_helper'

class TwemojifyTest < Minitest::Test
  def test_default_parsing
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify.base + '36x36/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end

  def test_folder_option
    Twemojify.folder = 'custom'
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify.base + 'custom/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end
end