# Unit testing the functions in src/functions.rb

require 'test/unit'

require 'colorize'

require_relative '../src/functions.rb'

require_relative '../src/questionbank.rb'

class FunctionTest < Test::Unit::TestCase

  include Functions
  include QuestionBank

end