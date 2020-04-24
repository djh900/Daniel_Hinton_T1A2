require_relative './functions.rb'
require_relative './question_bank.rb'

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
      puts "\n" + question[0] + "?"
      sleep(1)
      print "A: ".colorize(:orange)
      puts question[1]
      sleep(1)
      print "B: ".colorize(:orange)
      puts question[2]
      sleep(1)
      print "C: ".colorize(:orange)
      puts question[3]
      sleep(1)
      print "D: ".colorize(:orange)
      puts question[4]
      sleep(1)
      puts "\n1: Lifeline"
      puts "2: Walk Away"

      loop do
        answer = gets.chomp.capitalize
        
        if answer == question[5]
          puts "Correct!"
          break
        elsif answer == "1"
          puts "Lifeline"
        elsif answer == "2"
          puts "Walk Away"
          break
        elsif answer == "A" || answer == "B" || answer == "C" || answer = "D"
          puts "Incorrect"
          break
        else
          puts "Error: Invalid response"
        end
      end
    end
  end
end