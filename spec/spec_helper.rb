require 'rubygems'
require 'bundler/setup'
require 'simplecov'
require 'buffy'

SimpleCov.start do
  add_group "Lib", "lib"
end

RSpec.configure do |config|
end
