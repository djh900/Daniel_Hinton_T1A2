require_relative "./playmillionaire.rb"

module Functions

# Function to avoid repeating puts "\n___" sleep(2)" for lines of text where needed
module_function
  def sleeplines(inputarray)
    firstline = true # Prevent newline on first line
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

  # Rules displayed when user opts to view rules at start of game
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

  # PROGRAM STARTS HERE
  # User enters name and decides if they wish to view the game rules
  module_function
  def playmillionaire
    system('clear')
    sleeplines(["Welcome to Who Wants to be a Millionaire!",
      "I'm your host, Eddie McGuire!"])
    puts "\nLet's start with your name"
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
    questionstack = QuestionBank::questionstackgenerator # Generates a stack of 15 questions for each game
    PlayMillionaire::PlayMillionaire.new(questionstack, 1) # Starts the first question
  end

  # Ask the Audience lifeline
  module_function
  def asktheaudience(question)
    if $asktheaudience == true
      puts "\nOk, audience, buzzers at the ready, vote now!"
      sleep(1)
      puts "....."
      sleep(2)
      puts "Results:"
      print "A: ".colorize(:blue)
      puts question[6].to_s + "%"
      print "B: ".colorize(:blue)
      puts question[7].to_s + "%"
      print "C: ".colorize(:blue)
      puts question[8].to_s + "%"
      print "D: ".colorize(:blue)
      puts question[9].to_s + "%"
      $asktheaudience = false
    else
      puts "I'm sorry, you've already used Ask the Audience"
    end
  end

  #Phone a Friend lifeline
  module_function
  def phoneafriend(question)
    if $phoneafriend == true
      puts "Ok, you're going to phone a friend. Dialling now..."
      sleep(3)
      puts "Hello?"
      sleep(1)
      puts question[10]
      $phoneafriend = false
    else
      puts "I'm sorry, you've already used Phone A Friend"
    end
  end

  # 50/50 lifeline
  module_function
  def fiftyfifty(question)
    if $fiftyfifty == true
      puts "Okay, 50/50. Computer, take away two wrong answers leaving the right answer and one remaining wrong answer"
      sleep(2)
      puts "....."
      sleep(1)
      if question[5] == "A" || question[5] == "B"
        puts "The remaining answers are A and B"
      else
        puts "The remaining answers are C and D"
      end
      $fiftyfifty = false
    else
      puts "I'm sorry, you've already used 50/50"
    end
  end

  # User decides which lifeline to use when opting to use a lifeline
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

  # Designs the cheque ascii art displayed at the end of a game where the user walks away with a prize
  module_function
  def cheque(username, prize)
    asciiart = AsciiArt::AsciiArt.new
    asciiart.cheque($username, prize)
  end

  # Function is run if the user gets all 15 questions correct
  module_function
  def millionwin(answer)
    puts "\n#{answer} is Locked in..."
    sleep(2)
    puts "\nYou had $250,000..."
    sleep(2)
    puts "\nYou've just won $1 MILLION!!! Congratulations!"
    sleep(2)
    cheque($username, "$1 MILLION")
    puts "\nThanks for playing Who Wants to be a Millionare!"
  end
end
