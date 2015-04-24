Twemojify
=========

Twemojify is a bare-bones port of the official Twitter [twemoji](https://github.com/twitter/twemoji) javascript library.


Installation
------------

Include the gem in you Gemfile:

```ruby
gem "twemojify"
```

Or install directly:

```bash
gem install twemojify
```


Usage
-----

### parse

The core functionality of the Twemojify library:

```ruby
Twemojify.parse("I \u2764 emoji!")
```

This method takes the string and returns an html string parsed with the default configuration.

```
I <img class="emoji" draggable="false" alt="❤" src="//twemoji.maxcdn.com/36x36/2764.png"> emoji!
```

You can also pass in options, like so:

```ruby
Twemojify.parse("I \u2764 emoji!", :size => '64x64',:ext => '.jpg')
```

Which returns:

```
I <img class="emoji" draggable="false" alt="❤" src="//twemoji.maxcdn.com/64x64/2764.jpg"> emoji!
```

### test

The test method attempts to find the first emoji in a string:

```ruby
# returns 2
Twemojify.test("I \u2764 emoji!")

# returns nil
Twemojify.test("I love emoji!")
```

### Rails Helper

Twemojify includes a basic rails helper to access the parse method.

```
<p><%= twemojify(@comment.body) %><p>
```


Configuration
-------------

Default values from the original Twitter library are used, but can be customized through an initializer.

```ruby
# config/initializers/twemojify.rb
Twemojify.configure do |config|
  config.base = '//twemoji.maxcdn.com/'
  config.ext = '.png'
  config.size = '36x36'
  config.class_name = 'emoji'
  config.folder = nil
end
```


Options
-------

### base

Indicates the base url to prepend to the emoji img src. You can change the base to point to local assets on your own servers.

### ext

The file extension used for the emoji.

### size

Size of the emoji, default sizes follow a ```[width]x[height]``` format, but you can include any kind of custom sizes

### class_name

The class assigned the img tags created by the parse method.

### folder

Used to point to svg and other custom resources that don't require sizes. Overrides the size option.


Notes
-----

### Parsing HTML

Be careful when using the parse method with html string, as it does not sanitize the string nor
check if the string has already been parsed.

### Features NOT included from the original Twitter library

- DOM parsing (currently uses a simple regex match)
- Recognize control characters


Twitter Attribution Requirements
--------------------------------

From the official twitter library [readme](https://github.com/twitter/twemoji/blob/gh-pages/README.md):

> As an open source project, attribution is critical from a legal, practical and motivational perspective in our opinion. The graphics are licensed under the CC-BY 4.0 which has a pretty good guide on [best practices for attribution](https://wiki.creativecommons.org/Best_practices_for_attribution). 

> However, we consider the guide a bit onerous and as a project, will accept a mention in a project README or an 'About' section or footer on a website. In mobile applications, a common place would be in the Settings/About section (for example, see the mobile Twitter application Settings->About->Legal section). We would consider a mention in the HTML/JS source sufficient also.


License
-------

Copyright 2015 Thomas Tuttle

MIT License: [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)




