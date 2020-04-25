# Unit testing the functions in src/functions.rb

require 'test/unit'
require 'colorize'

require_relative '../src/functions.rb'

require_relative '../src/questionbank.rb'

class FunctionTest < Test::Unit::TestCase

  include Functions
  include QuestionBank

  samplequestion = ["In the 1960s, The Righteous Brothers had a number one hit
  with 'You've Lost That' What", "Lovin' Feeling", "Caring Sensation",
  "Tender Heart", "Credit Card Again", "A", 84, 7, 6, 3]
  
end