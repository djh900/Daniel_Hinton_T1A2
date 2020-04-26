## Implementation plan
See the plan in more detail at https://trello.com/b/57GHMngp/who-wants-to-be-a-millionaire-terminal-app
The deadline for all features listed here is Sunday, 26 April 2020
* Generate questions
* Generate ascii art
  - Who wants to be a millionaire logo
  - Cheque at end of game showing winnings
* Create the main game code
  - Main menu
  - Get the player's name
  - Generate a random question stack for each new game
  - Create a loop for each question
* Create the lifelines
  - Ask the Audience
  - Phone a Friend
  - 50/50
* Create walk away feature
* Find gems
  - Gem one (colorize)
  - Gem two (tty-pie)
  - Gem three (tty-spinner)
* Create README.md file
* Create licence
* Manually test Application
  - Test lifelines
  - Test Walk away
  - Test incorrect answer before first safe level
  - Test incorrect answer before second safe level
  - Test getting all questions correct
  - Test incorrect user inputs
* Write unit tests

Optional:
* Add a timer to the questions
* Double the question bank size
* Create a confetti animation when user answers all questions correctly