# Buffy

Buffy is a gem for reading files into a buffer

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
    b.line 1..2
      => "1: hello\n2: world"

    b.line 1, "goodbye cruel"
    b.line 1..2
      => "1: goodbye cruel \n2: world"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
