require 'colorize'

require_relative 'src/functions.rb'
require_relative 'src/asciiart'

# Load screen

system('clear')
asciiArt = AsciiArt::AsciiArt.new
asciiArt.loadscreen
sleep(4)

# Main Menu

system('clear')
Functions::playmillionaire