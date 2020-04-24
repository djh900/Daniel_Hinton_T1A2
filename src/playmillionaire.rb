require_relative './functions.rb'
require_relative './questionbank.rb'
require_relative './eddielines.rb'

require 'colorize'


module PlayMillionaire
  
  class PlayMillionaire

    include QuestionBank
    include EddieLines

    $moneytree = {1 => "$100", 2 => "$200", 3 => "$300", 4 => "$500", 
      5 => "$1,000", 6 => "$1,500", 7 => "$2,500", 8 => "$4,000", 9 => "$6,000",
      10 => "$10,000", 11 => "$20,000", 12 => "$50,000", 13 => "$100,000",
      14 => "$250,000", 15 => "$1 Million"}

    def initialize(questionstack, questioncounter)
      $asktheaudience = true
      $phoneafriend = true
      $fiftyfifty = true
      system('clear')
      puts "Ok, let's play Who Wants to be a Millionaire!"
      sleep(2)
      for question in questionstack
        questionfunc(question, questioncounter)
        questioncounter += 1
      end
    
    end

    def questionfunc(question, questioncounter)
      system('clear')
      puts "Question #{questioncounter} is for #{$moneytree[questioncounter]}"
      sleep(2)
      puts "\n" + question[0] + "?"
      sleep(4)
      print "A: ".colorize(:red)
      puts question[1]
      sleep(2)
      print "B: ".colorize(:red)
      puts question[2]
      sleep(2)
      print "C: ".colorize(:red)
      puts question[3]
      sleep(2)
      print "D: ".colorize(:red)
      puts question[4]
      sleep(2)
      puts "\n1: Lifeline"
      puts "2: Walk Away"

      loop do
        print "\nRESPONSE: "
        answer = gets.chomp.capitalize

        if answer == question[5]
          puts "\n#{answer} is Locked in..."
          sleep(2)
          system('clear')
          puts EddieLines::eddieCorrectAnswer + "!"
          sleep(1)
          puts "\nYou've won #{$moneytree[questioncounter]}"
          sleep(1)
          puts EddieLines::eddieQuips + "!"
          sleep(1)
          puts "\nPress ENTER for the next question"
          gets
          break
        elsif answer == "1"
          Functions::lifelines(question)
        elsif answer == "2"
          puts "Walk Away"
          puts "Congratulations, you walk away with #{$moneytree[questioncounter-1]}"
          puts "Thanks for playing Who Wants to be a Millionaire!"
          exit
        elsif answer == "A" || answer == "B" || answer == "C" || answer = "D"
          puts "\n#{answer} is Locked in..."
          sleep(2)
          system('clear')
          array1 = ["I'm sorry, that's the wrong answer!",
          "The correct answer was #{question[5]}",
          "Sorry, you walk away with nothing",
          "Thanks for playing!"]
          Functions::sleeplines(array1)
          exit
        else
          puts "Error: Invalid response"
        end
      end
    end
  end
end