require 'test_helper'

class TwemojifyTest < Minitest::Test
  def setup
    Twemojify.reset
  end

  def test_default_parsing
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify.base + '36x36/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end

  def test_configure_block
    Twemojify.configure do |config|
      config.size = '48x48'
      config.base = '/base/'
    end

    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="/base/48x48/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end

  def test_parse_method_options
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify.base + '64x64/2764.jpg"> emoji!',
                 Twemojify.parse("I \u2764 emoji!", :size => '64x64',:ext => '.jpg')
  end

  def test_folder_option
    Twemojify.folder = 'custom'
    assert_equal 'I <img class="emoji" draggable="false" alt="' + "\u2764" + '" src="' + Twemojify.base + 'custom/2764.png"> emoji!',
                 Twemojify.parse("I \u2764 emoji!")
  end
end