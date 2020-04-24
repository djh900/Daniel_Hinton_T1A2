require 'colorize'

require_relative 'src/question_bank.rb'
require_relative 'src/logo_ascii_art.rb'
require_relative 'src/eddie_lines.rb'
require_relative 'src/lifelines.rb'
require_relative 'src/functions.rb'

# Load screen

system('clear')
asciiArt = AsciiArt::AsciiArt.new
asciiArt.loadscreen
sleep(4)

# Main Menu

system('clear')
Functions::playmillionaire1