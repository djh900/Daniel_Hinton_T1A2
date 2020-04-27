# Who wants to be a Millionaire Terminal App
![wwtbam_logo](./img/logo-large.jpg)
## Description
15 Questions stand between you and $1 million. Let's play Who Wants to be a Millionaire!

The Who Wants to be a Millionaire Terminal App is a Terminal-based game designed to simulate the experience of being a contestant on the long-running quiz show. The user will be presented with multiple-choice questions, with each correct answer increasing their prize and, consequently, the difficulty of the questions. If the user answers 15 questions in a row correctly, they will beat the game and 'win' $1 million.

## How to install
Clone or download the project to your computer.

If you are on a Windows machine, you will need to have Ruby installed.

You can install Ruby here: https://rubyinstaller.org/

Then, using your computer's command line, navigate to the root folder 'Daniel_Hinton_T1A2'

You're now ready to go! type in `ruby play.rb` and get ready to play for $1 million!

# Software Development Plan
![wwtbam_logo](./img/logo-large.jpg)
### Statement of Purpose
15 Questions stand between you and $1 million. Let's play Who Wants to be a Millionaire!

The Who Wants to be a Millionaire Terminal App is a Terminal-based game designed to simulate the experience of being a contestant on the long-running quiz show. The user will be presented with multiple-choice questions, with each correct answer increasing their prize and, consequently, the difficulty of the questions. If the user answers 15 questions in a row correctly, they will beat the game and 'win' $1 million.

##### Target audience
The target audience is both fans of quiz and trivia games, and fans of TV game shows, especially the show on which this game is based. 

##### How the user interacts with the game
The user interacts with the Terminal app through text-based inputs. They will be prompted at the appropriate times to input text, such as to answer a question or navigate the main menu.

### Features
##### 1. The Questions
The questions are the most important part of the app and comprise the bulk of it's data. Each question has four possible answers, one of which is correct. The questions have 15 difficulties, ranging from \$100 (the easiest) to \$1 million (the hardest). 

Each question will be structured in Ruby as a loop, where the user returns to the question and:
* If they have answered the question correctly, the question will change to the next one in the 'question stack' array generated randomly from the question bank at the start of each game.
* If they opt to use a lifeline (explained below), the lifeline results will be displayed.
* If they answer incorrectly or opt to walk away, the loop will break.
* If the question is the $1 million dollar one and the user is correct, the loop will break and the user will win the game.

##### 2. The Money Tree
The user starts a new game with the \$100 question. If they get that right, they move to the \$200 question, and so forth until they either get a question wrong, or answer all 15 questions correctly.

Each question has a corresponding monetary value, as seen below:

![money_tree](./img/money-tree.png)

\$1,000 and \$10,000 are safe levels. Once the user gets those questions right, they are guaranteed to walk away with that money, even if they go on to get a question wrong.

##### 3. The Lifelines
Just like in the TV show, users will have three lifelines they can use once during each game:

![lifelines](./img/lifelines.png)
* Ask the Audience - Ask a virtual studio audience the question and receive a poll of their answers. The results are shows as a pie chart using the tty-pie gem.
* Phone a Friend - Phone a 'friend' and receive their take on the question. There are 8 possible phone a friend responses ranging from 100% certainty of the answer to no idea.
* 50/50 - Remove two incorrect answers leaving a choice between only the right answer and one remaining wrong answer.

##### 4. Walk Away
At any point in the game, the user may elect to walk away, and take all the money they have earned up to that point home with them. But if they choose not to and get a question wrong, they will lose all the money they have earned, with the exception of any safe levels they have passed.

##### 5. The Host
The game wouldn't be complete without a host, and that's where our very own, virtual Eddie McGuire comes in. Complete with quips, jokes and comments, the virtual Eddie provides a fun aspect to the game and helps increase its realism.
The virtual eddie is an array of 'quips', one of which is selected randomly after a question has been answered correctly. There are also more lines from virtual Eddie which do not change from game to game (such as asking 'What is your name?') and they are located in the play.rb file

![eddie_mcguire](./img/eddie-mcguire.png)

### User Experience
When the user loads the game, they are introduced to the host and prompted to enter their name. They are then given the option of viewing the game rules. After this a new game of Millionaire starts.

The user is presented with the first question. They can answer with either 'A', 'B', 'C' or 'D' if they think they know the answer, or select '1' to use a lifeline or '2' to walk away.

If they select A, B, C or D, they will be told if their answer is correct or not. If the question is worth $4,000 or more, they will be asked it that is their final answer and prompted to enter Y or N. If the answer is correct, the user moves on to the next question. If not, they leave the game with the amount of money equivelant to the last safe level they passed.

If the user selects '1', they will be asked which lifeline they want to use; ask the audience, phone a friend or 50/50.

Ask the audience presents the results of polling the virtual studio audience in the form of a pie chart using the gem 'tty-pie'.

Phone a friend phones a virtual friend, of which there are eight possible responses, ranging from 100% certainty to no idea.

50/50 Tells the user that two of the question's options are incorrect.

If the user selects '4', they will walk away with the amount of money equivelant to the last question they got correct and leave the game.

When the user leaves the game, they will be presented with a virtual ascci art cheque, showing their name and the amount of money they won (unless they did not win any money)

The .chomp method on user inputs will remove whitespaces and the .capitalize method will correct the formatting of any lowercase answers. If the user does not provide a valid input, an error message of "Error: You did not provide a valid input" will be displayed and the user able to re-enter the correct input.

### Control Flow

![flow chart](./img/flow-chart.jpg)

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

## Troubleshooting
Make sure you have the latest version of Ruby installed. You can check this on your command line with the command `ruby -v`. The latest version is 2.7.0

If you encounter any errors with the program, you can create an issue log on github: https://github.com/djh900/Daniel_Hinton_T1A2/issues