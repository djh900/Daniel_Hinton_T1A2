require_relative './functions.rb'
require_relative './questionbank.rb'
require_relative './eddielines.rb'
require_relative './asciiart.rb'

module PlayMillionaire
  
  class PlayMillionaire

    include QuestionBank
    include EddieLines
    include AsciiArt


    $moneytree = {1 => "$100", 2 => "$200", 3 => "$300", 4 => "$500", 
      5 => "$1,000 and your first safe level", 6 => "$1,500", 7 => "$2,500",
      8 => "$4,000", 9 => "$6,000", 10 => "$10,000 and your second safe level",
      11 => "$20,000", 12 => "$50,000", 13 => "$100,000", 14 => "$250,000",
      15 => "$1 Million"}

    $asktheaudience = true
    $phoneafriend = true
    $fiftyfifty = true

    def initialize(questionstack, questioncounter)
      system('clear')
      puts "Ok, let's play Who Wants to be a Millionaire!"
      sleep(2)
      for question in questionstack
        questionfunc(question, questioncounter)
        questioncounter += 1
      end
    
    end

    # This function runs for each question in the question stack
    def questionfunc(question, questioncounter)
      system('clear')

      # Question displayed on the screen
      puts "Question #{questioncounter} is for #{$moneytree[questioncounter]}"
      sleep(1)
      Functions::moneytree(questioncounter)
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
      sleep(1)
      puts "\n1: Lifeline"
      puts "2: Walk Away"

      # The user gives their answer here
      loop do
        print "\nANSWER: "
        answer = gets.chomp.capitalize

        if questioncounter >= 8 && (answer == "A" || answer == "B" || answer == "C" || answer == "D")
          answer = Functions::answerchecker(answer)
        end

        if answer == question[5] # Correct answer
          Functions::millionwin(answer) if questioncounter == 15
          puts "\n#{answer} is Locked in..."
          sleep(2)
          puts "\n" + EddieLines::eddieCorrectAnswer + "!"
          sleep(2)
          puts "\nYou've won #{$moneytree[questioncounter]}"
          sleep(2)
          puts "\n" + EddieLines::eddieQuips + "!"
          sleep(2)
          puts "\nPress ENTER for the next question"
          gets
          break
        elsif answer == "1" # User wants to use a lifeline
          Functions::lifelines(question)
        elsif answer == "2" # User opts to walk away
          puts "\nWalk Away"
          sleep(1)
          prize = $moneytree[questioncounter-1]
          puts "\nCongratulations, you walk away with #{prize}!"
          sleep(2)
          username = $username
          Functions::cheque(username, prize)
          sleep(2)
          puts "\nThanks for playing Who Wants to be a Millionaire!"
          exit
        elsif answer == "A" || answer == "B" || answer == "C" || answer == "D" #Incorrect answer
          puts "\n#{answer} is Locked in..."
          sleep(2)
          if questioncounter < 5
            prize = "0"
          elsif questioncounter < 10
            prize = "$1,000"
          else 
            prize = "$10,000"
          end
          array1 = ["\nI'm sorry, that's the wrong answer!",
          "The correct answer was #{question[5]}",
          "You leave with $#{prize}",
          "Thanks for playing!"]
          Functions::sleeplines(array1)
          username = $username
          Functions::cheque(username, prize) unless questioncounter < 5
          exit
        else
          puts "Error: Invalid response"
        end
      end
    end
  end
end