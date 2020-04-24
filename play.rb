require_relative 'src/functions.rb'
require_relative 'src/asciiart'

system('clear')
asciiArt = AsciiArt::AsciiArt.new
asciiArt.loadscreen
sleep(4)

system('clear')
Functions::playmillionaire