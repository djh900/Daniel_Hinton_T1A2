require_relative "./playmillionaire.rb"

module Functions

  module_function
  def exitchecker
    userinput = gets.chomp.capitalize
    loop do
      case userinput
      when "Y"
        puts "\nThanks for playing Who Wants to be a Millionaire!\n"
        exit
      when "N"
        break
      else
        puts "I don't recognize that response"
      end
    end
  end

  module_function
  def sleeplines(inputarray)
    firstline = true #prevent newline on first line
    for line in inputarray
      if firstline
        puts line
        sleep(2)
        firstline = false
      else
        puts "\n" + line
        sleep(2)
      end
    end
  end

  module_function
  def rules
    system('clear')
    sleeplines(["Ok. Here are the rules to play Who Wants to be a Millionaire!",
      "15 questions stand between you and $1 million",
      "Each question is worth a greater amount of money than the last",
      "We start with the $100 question and work our way up all the way to $1 million",
      "There are safe levels at questions 5 and 10",
      "Each question has four possible answers, only one of which is correct",
      "Give me the right answer, and we go to the next question",
      "Give me the wrong answer, and you leave with whatever the last safe level you passed was",
      "If at any time you don't know the answer to a question, you can walk away with the money you have earned",
      "You will also have three lifelines: Ask the Audience, Phone a Friend and 50/50",
      "Ask the Audience will ask our virtual audience their opinion on the question and give you their results",
      "Phone a friend will phone your 'friend' and ask what they think",
      "50/50 will take away two wrong answers leaving only the right answer and one remaining wrong answer",
      "Best of luck!"])
    puts "\nPress ENTER to play Who Wants to be a Millionaire!"
    gets
  end

  module_function
  def playmillionaire
    system('clear')
    sleeplines(["Welcome to Who Wants to be a Millionaire!",
      "I'm your host, Eddie McGuire!",
      "Let's start with your name"])
    print "\nENTER NAME: "
    $username = gets.chomp.capitalize
    system('clear')
    sleeplines(["Welcome to the Hot Seat #{$username}!",
      "Now, would you like to hear the rules or get straight into playing for $1 million?",
      "1 FOR RULES | 2 TO PLAY MILLIONAIRE\n"])
    loop do
      userinput = gets.chomp
      case userinput
      when "1"
        rules
        break
      when "2"
        break
      else
        puts "\nI'm sorry, I didn't quite get that. Please enter 1 to hear the rules or 2 to play Millionaire"
      end
    end
    questionstack = QuestionBank::questionstackgenerator
    PlayMillionaire::PlayMillionaire.new(questionstack, 1)
  end

  module_function
  def asktheaudience(question)
    if $asktheaudience = true
      puts "\nOk, audience, buzzers at the ready, vote now!"
      sleep(1)
      puts "....."
      sleep(2)
      puts "\nResults:"
      print "A: ".colorize(:blue)
      puts question[6] + "%"
      print "B: ".colorize(:blue)
      puts question[7] + "%"
      print "C: ".colorize(:blue)
      puts question[8] + "%"
      print "D: ".colorize(:blue)
      puts question[9] + "%"
      $asktheaudience = false
    else
      puts "I'm sorry, you've already used Ask the Audience"
    end
  end

  module_function
  def phoneafriend(question)
    if $phoneafriend = true
      #pap results
      $phoneafriend = false
    else
      puts "I'm sorry, you've already used Phone A Friend"
    end
  end

  module_function
  def fiftyfifty(question)
    if $fiftyfifty = true
      puts "Okay, 50/50. Computer, take away two wrong answers leaving the right answer and one remaining wrong answer"
      sleep(2)
      puts "....."
      sleep(1)
      case question[5]
      when "A" || "B"
        puts "\nThe remaining answers are A and B"
      when "C" || D
        puts "\nThe remaining answers are C and D"
      end
      $fiftyfifty = false
    else
      puts "I'm sorry, you've already used 50/50"
    end
  end

  module_function
  def lifelines(question)
    if $asktheaudience == false && $phoneafriend == false && $fiftyfifty == false
      puts "\nI'm sorry, you're out of lifelines"
    else
      puts "\nOkay, you're going to use a lifeline."
      sleep (1)
      puts "\nThese are the lifelines you still have available:"
      puts "1. Ask the Audience" if $asktheaudience
      puts "2. Phone a Friend" if $phoneafriend
      puts "3. 50/50" if $fiftyfifty
    end

    loop do
      lifeline = gets.chomp

      case lifeline
      when "1"
        asktheaudience(question)
        break
      when "2"
        phoneafriend(question)
        break
      when "3"
        fiftyfifty(question)
        break
      else
        puts "I'm sorry, That's not a valid answer. Please enter a valid input"
      end
    end
  end
end
