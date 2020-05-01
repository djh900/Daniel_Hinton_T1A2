require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'colorize'
  gem 'tty-spinner'
  gem 'tty-pie'
end

require_relative './src/functions.rb'
require_relative './src/asciiart.rb'

require 'colorize'
require 'tty-spinner'
require 'tty-pie'

system('clear')
asciiArt = AsciiArt::AsciiArt.new
asciiArt.loadscreen
sleep(4)

system('clear')

Functions::playmillionaire