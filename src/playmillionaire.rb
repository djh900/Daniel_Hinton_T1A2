require_relative './functions.rb'
require_relative './question_bank.rb'

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
      puts question
      puts "1: Lifeline"
      puts "2: Walk Away"
      answer = gets.chomp

      # case answer
      # end
    end

  end

end