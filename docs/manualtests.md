Feature being tested                         |Test case                           |Expected result                |Test Date|Test Passed|
---------------------------------------------|------------------------------------|-------------------------------|---------|------------
Rules                                        |Inputting '2' after entering name   |Rules function runs            |26-Apr-20|✓
Lifeline chooser                             |Inputting '1' responding to question|Lifelines chooser function runs|26-Apr-20|✓
Ask The Audience                             |Inputting '1' to lifeline chooser   |Ask the audience function runs |26-Apr-20|✓
Phone a Friend                               |Inputting '2' to lifeline chooser   |Phone a friend function runs   |26-Apr-20|✓
50/50                                        |Inputting '3' to lifeline chooser   |50/50 function runs            |26-Apr-20|✓
Incorrect answer before $1,000               |Wrong answer on Q1                  |Game ends, user wins $0        |26-Apr-20|✓
Incorrect answer before $10,000              |Wrong answer on Q6                  |Game ends, user wins $1,000    |26-Apr-20|✓
Incorrect answer after $10,000               |Wrong answer on Q11                 |Game ends, user wins $10,000   |26-Apr-20|✓
All questions correct                        |All questions answered correctly    |Million win function runs      |26-Apr-20|✓
Walk Away                                    |Inputting '4' on question 2+        |Game ends, user wins $100      |26-Apr-20|✓
Ask the Audience function                    |Passing sample question to function |Results in question displayed  |27-Apr-20|✓
Phone a Friend function                      |Passing sample question to function |Phone a friend result displayed|27-Apr-20|✓
50/50 function                               |Passing sample question to function |50/50 result displayed         |27-Apr-20|✓
Million win function                         |Running function                    |Ascii art balloons and cheque  |27-Apr-20|✓
Trying to use lifeline after already used    |Trying to use lifeline twice on a question|Error message, asked to re-enter input|26-Apr-20|✓
Trying to use lifeline after all exhausted   |Inputting '4' responding to question after all lifelines already used|Error message, taken back to question|26-Apr-20|✓
Lock it in feature at question 8+            |Entering 'A' responding to question 8|Asked if that is my final answer|26-Apr-20|✓
Lock it in feature - Y                       |Responding 'Y' when asked if final answer on Q8|Answer locked in    |27-Apr-20|✓
Lock it in feature - N                       |Responding 'N' when asked if final answer on Q8|Asked to answer again|27-Apr-20|✓
Invalid input - Question response            |Responding 'z' to question|Error message, asked to re-enter input|26-Apr-20|✓
Invalid input - Lifeline chooser             |Responding 'z' when choosing a lifeline|Error message - prompted to re-enter input|26-Apr-20|✓
Invalid input - Lock it in feature           |Responding '1' when asked if answer final on Q8|Error message - Asked to re-enter input|26-Apr-20|✓
Cheque ascii art working                     |Walking away on Q2|Cheque ascii art with name/prize displayed|26-Apr-20|✓