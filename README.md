# Buffy

Buffy is a gem for readline files into a buffer

## Installation

Add this line to your application's Gemfile:

    gem 'buffy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buffy

## Usage

    b = Buffy::FileBuffer.new("hello_world.txt")
    b.lines
      => ["hello","world"]
    b.filename
      => "hello_world.txt"
    b.buffer
      => "hello\nworld"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
