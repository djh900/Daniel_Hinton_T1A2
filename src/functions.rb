module Functions

  module_function
  def exitchecker
    userinput = gets.chomp.capitalize
    loop do
      case userinput
      when "Y"
        puts "Thanks for playing Who Wants to be a Millionaire!\n"
        exit
      when "N"
        break
      else
        puts "I don't recognize that response"
      end
    end
  end

  def rules
  end

  module_function
  def playmillionaire
    system('clear')
    puts "Welcome to Who Wants to be a Millionaire!"
    sleep(1)
    puts "\nI'm your host, Eddie McGuire"
    sleep(1)
    puts "\nLet's start with your name"
    print "ENTER NAME: "
    username = gets.chomp.capitalize
    puts "\nWelcome to the hot seat #{username}"
    sleep(1)
    puts "\nNow, would you like to hear the rules or get straight into playing for $1 million?"
    sleep(1)
    puts "\n1 FOR RULES | 2 TO PLAY MILLIONAIRE"
    loop do
      userinput = gets.chomp
      case userinput
      when "1"
        rules
        break
      when "2"
        break
      else
        puts "I'm sorry, I didn't quite get that. Please enter 1 to hear the rules or 2 to play Millionaire"
    end
  end

end