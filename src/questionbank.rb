=begin
Question Structure:
question[0] = Question
question[1] = Option A
question[2] = Option B
question[3] = Option C
question[4] = Option D
question[5] = Correct Answer
question[6] = Ask the Audience A%
question[7] = Ask the Audience B%
question[8] = Ask the Audience C%
question[9] = Ask the Audience D%
question[10] = Phone a Friend results

$100 to $10,000 five questions each
$20,000 to $1,000,000 three questions each
=end

module QuestionBank

  # There are the different phone a friend functions
  # Each question has one of these hard coded in if the user wants to phone a friend for that question
  
  module_function
  def phoneafriend1(answer)
    "Ahh, that's easy, the answer is #{answer}"
  end

  module_function
  def phoneafriend2(answer)
    "Yep, I'm 90% sure the answer's #{answer}"
  end

  module_function
  def phoneafriend3(answer)
    "Pretty confident. I think it's #{answer}"
  end

  module_function
  def phoneafriend4(answer)
    "Not 100% sure but I have an inklink it's #{answer}"
  end

  module_function
  def phoneafriend5(answer)
    "I think it's #{answer}. But it could also be D"
  end

  module_function
  def phoneafriend6(answer)
    "Boy, really really not sure. If I had to guess I'd say #{answer}"
  end

  module_function
  def phoneafriend7
    "Boy, really really not sure. If i had to guess I'd say C"
  end

  def phoneafriend8
    "Absolutely no idea. Sorry"
  end

  # The question bank:

  q1 = ["In the 1960s, The Righteous Brothers had a number one hit with 'You've Lost That' What",
  "Lovin' Feeling", "Caring Sensation", "Tender Heart", "Credit Card Again", "A", 84, 7, 6, 3, phoneafriend1("A")]

  q2 = ["In a stadium or arena, the seating area farthest and highest from the stage is known as the what 'section'",
  "Nosebleed", "Headache", "Eyestrain", "Crook Neck", "A", 88, 6, 4, 2, phoneafriend2("A")]

  q3 = ["In basic mathematics, a whole non-negative number is known as a what number",
  "Natural", "Biodynamic", "Organic", "Gluten-free", "A", 76, 13, 11, 0, phoneafriend1("A")]

  q4 = ["First airing in 2005 was the long running Australian TV series 'McLeod's' what",
  "Daughters", "Uncles", "Sons", "Neighbours", "A", 95, 1, 1, 3, phoneafriend2("A")]

  q5 = ["'What's up Doc?' is a famous catchphrase of which character",
  "Elmer Fudd", "Bugs Bunny", "Daffy Duck", "Mr Hyde", "B", 14, 66, 18, 2, phoneafriend1("B")]

  q6 = ["Born in Philidelphia in 1861, William Wrigley Jr is best known for selling what",
  "Baseball Bats", "Sleeping Bags", "Chewing Gum", "Snakes", "C", 9, 4, 85, 2, phoneafriend2("B")]

  q7 = ["To be highly proficient at something is to 'have it down to a' what",
  "Political science", "Foreign language", "English major", "Fine art", "D", 3, 1, 7, 89, phoneafriend1("B")]

  q8 = ["In the classic nursery rhyme 'This Little Piggy', the third little piggy did what",
  "Stayed home", "Had roast beef", "Went to market", "Had none", "B", 22, 37, 19, 22, phoneafriend3("C")]

  q9 = ["Which of these is a common term that describes a light snowfall",
  "Sweeping", "Dusting", "Mopping", "Vacuuming", "B", 7, 79, 11, 3, phoneafriend1("B")]

  q10 = ["The largest portion of something is commonly known as 'the what share'",
  "Shark's", "Pig's", "Tiger's", "Lion's", "D", 7, 11, 9, 73, phoneafriend1("D")]

  q11 = ["Which of these is the correct spelling for a word meaning a deep shaft, particularly one for drawing water",
  "Bore", "Baw", "Boar", "Boor", "A", 68, 7, 19, 6, phoneafriend3("A")]

  q12 = ["What colour was the ball used in the first day-night test cricket match",
  "Yellow", "Red", "White", "Pink", "D", 5, 13, 35, 47, phoneafriend2("D")]

  q13 = ["A colloquial term for a major sporting final is the 'what' dance",
  "Barn", "Bush", "Big", "Belly", "C", 2, 8, 89, 1, phoneafriend1("C")]

  q14 = ["Which of these is the name of a city in Ireland?",
  "Cork", "Flint", "Hemp", "Felt", "A", 77, 8, 12, 3, phoneafriend4("A")]

  q15 = ["Which of these words is both someone who rides a horse and a verb meaning 'to manoeuvre for advantage'",
  "Cowboy", "Mountie", "Jockey", "Equestrian", "C", 4, 3, 81, 12, phoneafriend2("C")]

  q16 = ["Which of these is a type of gemstone",
  "Beryl", "Ethyl", "Myrtle", "Phyllis", "A", 45, 15, 32, 8, phoneafriend2("A")]

  q17 = ["'Metal Halide' is the name for a type of what, commonly found in public spaces",
  "Garbage Bin", "Lamp", "Park Bench", "Fence", "B", 30, 49, 15, 6, phoneafriend4("A")]

  q18 = ["Which of these sports has a marked area known as the 'key'",
  "Tennis", "Boxing", "Snooker", "Basketball", "D", 12, 7, 13, 68, phoneafriend2("D")]

  q19 = ["Which of these is a term meaning to force or trick a person into something",
  "Wuhan", "Guangdong", "Shanghai", "Nanjing", "C", 12, 20, 45, 23, phoneafriend2("C")]

  q20 = ["Which of these most closely decribes an 'anomaly'",
  "Calculated risk", "Deviation from the norm", "Binding agreement", "Type of monopoly", "B", 18, 46, 23, 9, phoneafriend3("B")]

  q21 = ["Which of these is a 'proper fraction'",
  "3/3", "3/5", "5/5", "5/3", "B", 9, 78, 3, 10, phoneafriend1("B")]

  q22 = ["'Thank U, Next' was an Australian number one hit single in 2018 for which singer",
  "Cardi B", "Ariana Grande", "Mariah Carey", "Halsey", "B", 20, 35, 26, 19, phoneafriend2("B")]

  q23 = ["A free national mobile phone recycling scheme in Australia is known as 'Mobile' what",
  "Monitor", "Mountain", "Meltdown", "Muster", "D", 13, 7, 19, 61, phoneafriend4("D")]

  q24 = ["In golf, if someone scores a bogey on a par five hole, how many shots did they hit",
  "Three", "Four", "Five", "Six", "D", 11, 17, 29, 43, phoneafriend1("D")]

  q25 = ["The village and historic site of Port Arthur is located on which section of Tasmania's coastline",
  "North-east", "North-west", "South-east", "South-west", "C", 12, 13, 42, 33, phoneafriend2("C")]

  q26 = ["In 2019, which celebrity received an Order of Australia for their contributions to both entertainment and charitable services",
  "Paul Hogan", "Nicole Kidman", "Kylie Minogue", "Jimmy Barnes", "C", 15, 22, 37, 26, phoneafriend4("B")]

  q27 = ["Mel Blanc is best known for providing the voice of which famous character",
  "Kermit the Frog", "Bugs Bunny", "Homer Simpson", "Darth Vader", "B", 13, 55, 20, 12, phoneafriend3("B")]

  q28 = ["An investigation that aims to find incriminating evidence is known as a what 'expedition'",
  "Hunting", "Fishing", "Jungle", "Arctic", "B", 22, 68, 7, 3, phoneafriend2("B")]

  q29 = ["Built in 1880 and stretching more than five thousand kilometres is Australia's what 'Fence'",
  "Dingo", "Emu", "Wombat", "Kangaroo", "A", 87, 2, 1, 10, phoneafriend1("A")]

  q30 = ["Which of these countries has never hosted a Winter Olympic Games",
  "Japan", "New Zealand", "South Korea", "Italy", "B", 11, 35, 19, 35, phoneafriend5("B")]

  q31 = ["In credit cards and banking, what does the 'V' represent in the abbreviation 'CVC'",
  "Verification", "Voucher", "Vital", "Visa", "A", 54, 11, 8, 27, phoneafriend1("A")]

  q32 = ["45 degrees Celcius is closest to how many degrees Farenheit",
  "90", "115", "140", "160", "B", 9, 35, 38, 18, phoneafriend6("B")]

  q33 = ["Funding given to a new business to help if get started is known as what 'capital'",
  "Seed", "Bloom", "Leaf", "Bud", "A", 44, 26, 9, 21, phoneafriend3("A")]

  q34 = ["'Wessex saddbleback' is the name of a breed of what",
  "Pig", "Goat", "Cow", "Horse", "A", 23, 19, 22, 36, phoneafriend6("D")]

  q35 = ["In the Australian Parliament, the upper house is also known as the what",
  "Crossbench", "Senate", "House of Representatives", "Opposition", "B", 11, 48, 34, 7, phoneafriend1("B")]

  q36 = ["Which of these political figures was born in the 1950s",
  "Jacinta Ardern", "Malcolm Turnbull", "Justin Trudeau", "Donald Trump", "B", 8, 42, 6, 44, phoneafriend5("D")]

  q37 = ["Under Australian law, flour used in commercial breadmaking must contain what 'acid'",
  "Ascorbic", "Folic", "Citric", "Hydrochloric", "B", 22, 39, 28, 11, phoneafriend3("B")]

  q38 = ["In the sport of boxing, which weight division is immediately below heavyweight",
  "Middleweight", "Welterweight", "Cruiserweight", "Bantamweight", "C", 26, 24, 39, 11, phoneafriend6("C")]

  q39 = ["In 2015, Carly Simon confirmed that at least part of her famous 1972 song 'You're So Vain' was about who?",
  "Burt Reynolds", "Dudley Moore", "Robert Redford", "Warren Beatty", "D", 22, 17, 19, 42, phoneafriend6("D")]

  q40 = ["Published in 2018 was Andy Griffith and Terry Denton's what '-Story TreeHouse",
  "10", "14", "104", "140", "C", 11, 27, 44, 18, phoneafriend5("C")]

  q41 = ["Which of these is the name of both a city in Wales and a town in Tasmania",
  "Swansea", "Newport", "Colwyn Bay", "St Davids", "A", 32, 29, 23, 16, phoneafriend4("A")]

  q42 = ["Which of these best describes the word 'ignominious'",
  "Crumpled", "Thoughtful", "Shameful", "Proud", "C", 11, 35, 23, 31, phoneafriend5("C")]

  q43 = ["Who directed the 1975 Australian film 'Picnic at Hanging Rock'",
  "Jane Campion", "Peter Weir", "Baz Luhrmann", "George Miller", "B", 22, 51, 6, 21, phoneafriend1("B")]

  q44 = ["Which of these is the name of a model of car produced by Volkswagen-owned car maker Skoda",
  "Leprechaun", "Sasquatch", "Bunyip", "Yeti", "D", 9, 33, 19, 39, phoneafriend6("D")]

  q45 = ["By definition, 'epigraphy' is the study of ancient what",
  "Allergies", "Inscriptions", "Farming Practices", "Diets", "B", 12, 54, 8, 26, phoneafriend2("B")]

  q46 = ["Jacqueline Kennedy famously described the presidency of John F. Kennedy as which legendary place",
  "Utopia", "Shangri-La", "El Dorado", "Camelot", "D", 25, 29, 8, 38, phoneafriend6("D")]

  q47 = ["The Venetian island of Burano is best known for the production of a type of what",
  "Lace", "Leather", "Denim", "Cotton", "A", 19, 37, 12, 32, phoneafriend8]

  q48 = ["Which of these is closest in meaning to the word 'corpulent'",
  "Sharp", "Opaque", "Bulky", "Frozen", "C", 11, 23, 29, 37, phoneafriend8]

  q49 = ["Actress Rebel Wilson famously made her big screen debut in which 2003 Australian film",
  "Take Away", "Kangaroo Jack", "Bad Eggs", "Fat Pizza", "D", 7, 46, 12, 38, phoneafriend4("D")]

  q50 = ["Which of these is the horizontal bar typically found at the base of a guitar head over which the strings are stretched",
  "Nut", "Bolt", "Saddle", "Bridge", "A", 39, 4, 27, 30, phoneafriend1("A")]

  q51 = ["In human anatomy, the term 'popliteal' refers to the back of what",
  "Skull", "Hand", "Knee", "Throat", "C", 33, 17, 31, 19, phoneafriend5("C")]

  q52 = ["The Corinth Canal is in which country",
  "Mexico", "Greece", "Spain", "India", "B", 9, 28, 52, 21, phoneafriend8]

  q53 = ["Opening its first store in Arkansas in 1962, which of these is the world's largest and most profitable retail chain",
  "Walmart", "Target", "Costco", "Home Depot", "A", 35, 29, 26, 10, phoneafriend3("A")]

  q54 = ["By land area, which of New York City's five boroughs is the largest",
  "Queens", "Brooklyn", "Manhatten", "Staten Island", "A", 25, 23, 27, 25, phoneafriend8]

  q55 = ["Geographically, which of these cities is closest to Berlin",
  "Vienna", "Prague", "Munich", "Budapest", "B", 13, 28, 43, 16, phoneafriend5("C")]

  q56 = ["In which year was the Australian Stock Exchange formed",
  "1877", "1907", "1937", "1987", "D", 19, 38, 21, 22, phoneafriend8]

  q57 = ["'The Red Room' is a 1908 painting by which artist",
  "Vincent Van Gogh", "Frederic Bazille", "Paul Cezanne", "Henri Matisse", "D", 29, 8, 25, 38, phoneafriend2("D")]

  q58 = ["What is the name of the NASA rocket designed to return humans to the moon",
  "Juno", "Mars", "Minerva", "Ares *cough*", "D", 22, 18, 25, 35, phoneafriend8]

  q59 = ["Which of these is a type of collectible porcelain",
  "Royal Student", "Royal Dux", "Royal Tudor", "Royal Prefect", "B", 12, 37, 16, 35, phoneafriend6("B")]

  q60 = ["Which of these gemstones is a form of aluminium oxide",
  "Diamond", "Jasper", "Emerald", "Sapphire", "D", 5, 27, 32, 36, phoneafriend6("D")]

  q61 = ["Thanks to a novel by James Joyce, which date is now known as Bloomsday",
  "July 17", "June 16", "May 15", "April 14", "B", 25, 25, 25, 25, phoneafriend8]

  q62 = ["On the flag of the United Nations, which country is shown closest to the top of the flag",
  "New Zealand", "Norway", "Chile", "Iceland", "A", 13, 29, 17, 41, phoneafriend8]

  q63 = ["Commonly known by his nickname, what was the full name of 'Banjo' Patterson",
  "Albert Burke", "Andrew Barton", "Adam Beaufort", "Adrian Banks", "B", 45, 31, 14, 10, phoneafriend7]

  q64 = ["Which of Hollywood's four Warner Brothers died on the eve of their landmark premiere of 'The Jazz Singer'",
  "Albert", "Harry", "Jack", "Sam", "D", 24, 26, 28, 22, phoneafriend8]

  q65 = ["Horowitz is the original surname of which American actor",
  "Matt Damon", "Johnny Depp", "Julia Roberts", "Winona Ryder", "D", 38, 17, 27, 18, phoneafriend7]

  # Placing the questions into their difficuly categories:

  $questions100 = [q1, q2, q3, q4, q5]
  $questions200 = [q6, q7, q8, q9, q10]
  $questions300 = [q11, q12, q13, q14, q15]
  $questions500 = [q16, q17, q18, q19, q20]
  $questions1000 = [q21, q22, q23, q24, q25]
  $questions1500 = [q26, q27, q28, q29, q30]
  $questions2500 = [q31, q32, q33, q34, q35]
  $questions4k = [q36, q37, q38, q39, q40]
  $questions6k = [q41, q42, q43, q44, q45]
  $questions10k = [q46, q47, q48, q49, q50]
  $questions20k = [q51, q52, q53]
  $questions50k = [q54, q55, q56]
  $questions100k = [q57, q58, q59]
  $questions250k = [q60, q61, q62]
  $questions1million = [q63, q64, q65]

  # Generating a new, random question stack for each game:

  module_function
  def questionstackgenerator
    questionstack = []

    questionlist = [$questions100, $questions200, $questions300, $questions500,
      $questions1000, $questions1500, $questions2500, $questions4k, $questions6k,
      $questions10k, $questions20k, $questions50k, $questions100k, $questions250k, $questions1million]

    for question in questionlist
      questionstack << question.sample
    end

    return questionstack
  end

end