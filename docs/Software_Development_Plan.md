#Software Development Plan
![wwtbam_logo](./img/logo-large.jpg)
###Statement of Purpose
15 Questions stand between you and $1 million. Let's play Who Wants to be a Millionaire!

The Who Wants to be a Millionaire Terminal App is a Terminal-based game designed to simulate the experience of being a contestant on the long-running quiz show. The user will be presented with multiple-choice questions, with each correct answer increasing their prize and, consequently, the difficulty of the questions. If the user answers 15 questions in a row correctly, they will beat the game and 'win' $1 million.

######Target audience
The target audience is both fans of quiz and trivia games, and fans of TV game shows, especially the show on which this game is based. 

######How the user interacts with the game
The user interacts with the Terminal app through text-based inputs. They will be prompted at the appropriate times to input text, such as to answer a question or navigate the main menu.

###Features
###### 1. The Questions
The questions are the most important part of the app and comprise the bulk of it's data. Each question has four possible answers, one of which is correct. The questions have 15 difficulties, ranging from \$100 (the easiest) to \$1 million (the hardest). 

Each question will be structured in Ruby as a loop, where the user returns to the question and:
* If they have answered the question correctly, the question will change to the next one in the 'question stack' array generated randomly from the question bank at the start of each game.
* If they opt to use a lifeline (explained below), the lifeline results will be displayed.
* If they answer incorrectly or opt to walk away, the loop will break.
* If the question is the $1 million dollar one and the user is correct, the loop will break and the user will win the game.

######2. The Money Tree
The user starts a new game with the \$100 question. If they get that right, they move to the \$200 question, and so forth until they either get a question wrong, or answer all 15 questions correctly.

Each question has a corresponding monetary value, as seen below:

![money_tree](../img/money-tree.png)

\$1,000 and \$10,000 are safe levels. Once the user gets those questions right, they are guaranteed to walk away with that money, even if they go on to get a question wrong.

######3. The Lifelines
Just like in the TV show, users will have three lifelines they can use once during each game:

![lifelines](../img/lifelines.png)
* Ask the Audience - Ask a virtual studio audience the question and receive a poll of their answers.
* Phone a Friend - Phone a 'friend' and receive their take on the question.
* 50/50 - Remove two incorrect answers leaving a choice between only the right answer and one remaining wrong answer.

######4. Walk Away
At any point in the game, the user may elect to walk away, and take all the money they have earned up to that point home with them. But if they choose not to and get a question wrong, they will lose all the money they have earned, with the exception of any safe levels they have passed.

######5. The Host
The game wouldn't be complete without a host, and that's where our very own, virtual Eddie McGuire comes in. Complete with quips, jokes and comments, the virtual Eddie provides a fun aspect to the game and helps increase its realism.
The virtual eddie is an array of 'quips', one of which is selected randomly after a question has been answered correctly. There are also more lines from virtual Eddie which do not change from game to game (such as asking 'What is your name?') and they are located in the play.rb file

![eddie_mcguire](../img/eddie-mcguire.png)

###User Experience
When the user loads the game, they are presented with a menu containing the following options:
* Play Millionaire!
* Exit

The 'Play Millionaire!' option takes the user to a new game of Who Wants to be a Millionaire. They will be prompted by the virtual host for their name, and then go on to be given the game's instructions. Then the user will be given the first question. They can answer with either 'A', 'B', 'C' or 'D' if they think they know the answer, or select '1' for Ask the Audience, '2' for Phone a Friend, '3' for 50/50, or '4' to walk away.

The .chomp method will remove whitespaces and .capitalize method will correct the formatting of any lowercase answers. If the user does not provide a valid input, an error message of "Error: You did not provide a valid input" will be displayed and the user able to re-enter the input.

The 'Exit' option on the main menu exits the user from the application.

###Control Flow

![flow chart](../img/flow-chart.jpg)