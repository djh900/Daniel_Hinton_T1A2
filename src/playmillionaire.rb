require_relative './functions.rb'
require_relative './questionbank.rb'

require 'colorize'

module PlayMillionaire

  class PlayMillionaire

    include QuestionBank

    $moneytree = {1 => "$100", 2 => "$200", 3 => "$300", 4 => "$500", 
      5 => "$1,000", 6 => "$1,500", 7 => "$2,500", 8 => "$4,000", 9 => "$6,000",
      10 => "$10,000", 11 => "$20,000", 12 => "$50,000", 13 => "$100,000",
      14 => "$250,000", 15 => "$1 Million"}

    def initialize(questionstack, questioncounter)
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
      print "A: ".colorize(:orange)
      puts question[1]
      sleep(2)
      print "B: ".colorize(:orange)
      puts question[2]
      sleep(2)
      print "C: ".colorize(:orange)
      puts question[3]
      sleep(2)
      print "D: ".colorize(:orange)
      puts question[4]
      sleep(2)
      puts "\n1: Lifeline"
      puts "2: Walk Away"

      loop do
        print "\nRESPONSE: "
        answer = gets.chomp.capitalize

        puts "\nLocked in..."

        sleep(2)
        system('clear')

        if answer == question[5]
          puts "Correct!"
          puts "You've won #{$moneytree[questioncounter]}"
          puts
          puts "\nPress ENTER for the next question"
          gets
          break
        elsif answer == "1"
          puts "Lifeline"
        elsif answer == "2"
          puts "Walk Away"
          break
          break
          puts "Congratulations, you walk away with #{$moneytree[questioncounter-1]}"
        elsif answer == "A" || answer == "B" || answer == "C" || answer = "D"
          puts "\nIncorrect!"
          sleep(2)
          puts "\nSorry, you walk away with nothing"
          sleep(2)
          puts "\nThanks for playing!"
          exit
        else
          puts "Error: Invalid response"
        end
      end
    end
  end
end