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
puts "Welcome to Who Wants to be a Millionaire!"

loop do
  puts "\nMAIN MENU"
  puts "------------"
  puts "1. Play Millionaire!"
  puts "2. Exit"

  input1 = gets.chomp
  
  case input1
  when "1"
    Functions::playmillionaire1
  when "2"
    puts "Are you sure you want to exit? (Y/N)"
    Functions::exitchecker
  else
    puts "I don't recognize that response. Please try again.\n"
  end
end