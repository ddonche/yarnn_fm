module Names
    extend ActiveSupport::Concern
    
  def names
    male_first_names = [
      "A.", "Abe", "Abraham", "Adam", "Adolf", "Adolfo", "Adonis", "Adrian", "Aidan", "Al", "Albert", "Alan", "Alex", "Alfonso", "Alfred", 
      "Allister", "Alonzo", "Andrew", "Andy", 
      "Anson", "Anthony", "Antonio", 
      "Apollo", "Archer", "Archibald", "Archie", "Art", "Arthur", "August", "Augustus", "Austin",
      "B.", "Baker", "Barney", "Barry", "Bart", "Bartholomew", "Barry", "Beau", "Ben", "Benjamin", "Benji", "Benny", "Benson", "Bert", "Bill", "Billy", "Bishop", 
      "Blake", "Blane", "Bo", "Bob", "Bobby", "Bohdy", "Booker", "Brad", "Bradley", "Bradon", "Brady",
      "Bran", "Brandon", "Brent", "Bret", "Brian", "Brock", "Broderick", "Brody", 
      "Bruce", "Bruno", "Bryan", "Bryce", "Butch",
      "C.", "Caden", "Caesar", "Cam", "Cameron", "Carey", "Carl", "Casper", "Cecil", "Chance", "Charles", "Chase", "Chaz", "Chuck", "Claude", 
      "Claudius", "Clay", "Clayton", "Clifton", "Cliff", "Clive", "Colby", "Connor", "Cooper", "Cord", "Cordell", 
      "Cornelius", "Cort", 
      "Cory", "Courtney", "Crispin", "Curt", "Curtis", "Cy", "Cyrus", 
      "D.", "Dade", "Dallas", "Dale", "Damarcus", "Damien", "Damon", "Dan", "Daniel", "Danny", "Darius", "Darrel", "Darren", 
      "Dave", "David", "Davis", "Dax", "Dean",
      "Delbert", "Dell", "Dennis", "Denny", "Desmond", "Devan", "Diego", "Dixon", "Dolf", "Don", "Donald", "Donaldo", "Doug", 
      "Douglas", "Drew", "Drake",
      "Dustin", "Dusty", "Duke", "Dutch",
      "E.", "Earl", "Ed", "Eddie", "Edgar", "Eduardo", "Edward", "Edwin", "Elias", "Elijah", "Ellis", "Elmer", "Elrod", "Elrond",
      "Elroy", "Elvis", "Ender", "Ennis", 
      "Ernie", "Ernest", "Ernesto", "Eugene", "Evan", "Everett", "Ezekiel", "Ezra",
      "F.", "Fabio", "Favian", "Felipe", "Ferdinand", "Fernando", "Ferris", "Francis", "Francisco", "Frank", "Franklin", "Fred", "Freddy",
      "G.", "Gabe", "Gabriel", "Garrett", "Gary", "Gavin", "Gaylord", "Gene", "Geo", "Geoff", "Geoffrey", "George", "Gerald", "Geraldo", 
      "Gerard", "Gio", "Giovanni", "Glen", "Gordon", "Gordy", "Grant", "Greg", "Grover", "Guy",
      "H.", "Hal", "Hamlet", "Hank", "Harlon", "Harrison", "Harry", "Harvey", "Hawk", "Henry", "Herman", "Higgins", "Holden", 
      "Homer", "Horatio", "Howard", "Howie", "Huey",
      "Hubert", "Hugh", "Hugo", "Hunter",
      "I.", "Iago", "Ian", "Ignatio", "Iggy", "Irving", "Ivan", "Iver", 
      "J.", "Jace", "Jack", "Jackie", "Jackson", "Jacob", "Jaden", "Jake", "James", "Jacques", "Jared", "Jason", "Jasper", "Jay", "Jean-Claude", 
      "Jeb", "Jebediah", "Jed", "Jedediah", "Jens", "Jeff", "Jefferson", "Jeffrey", "Jeremiah", "Jeremy", 
      "Jerry", "Jethro", "Jesus", "Jim", "Jimmy", "Johan", 
      "John", "Johnny", "Jordan", "Jordy", "Jorge", "Juan", "Julian", "Julio", "Julius", "July",
      "Justice", "Justin",
      "K.", "Kai", "Karl", "Keihl", "Keith", "Kell", "Keller", "Ken", "Kenneth", "Kenny", "Kurt", "Kyle", 
      "L.", "Ladamien", "Ladarius", "Lamont", "Lance", "Lane", "Larry", "Lawrence", "Lee", "Lenny", "Leo", "Leonard", "Leonardo", "Levi", 
      "Lewis", "Lex", "Leyton", "Liam", "Lionel", "Livius", "Logan", 
      "Lonn", "Lorin", 
      "Lou", "Louis", "Luca", "Lucas", 
      "Luke", "Luther", "Lyle",
      "M.", "Marcus", "Mark", "Martin", "Marty", "Matt", "Matthew", "Max", "Maximilian", "Michael", "Mick", "Micky", 
      "Mitch", "Mitchell", "Mitt", "Mohammad", 
      "Morgan", "Muhammad",
      "N.", "Nate", "Nathan", "Newman", "Nicholas", "Nick", "Nigel", "Noel",
      "O.", "Odin", "Olaf", "Oliver", "Orion", "Orville", "Oscar", "Owen",
      "P.", "Paddy", "Paul", "Peregrine", "Perry", "Peter", "Phil", "Phillip", "Phineas", 
      "Phoenix", "Planter", "Potter", "Prescott", "Preston", "Prince",
      "Q.", "Quan", "Quincy", "Quin", "Quinn", "Quinton",
      "R.", "Rafe", "Rake", "Randall", "Randy", "Raphael", "Ray", "Rayburn", "Raylon", "Raymond", "Red", "Reed", "Reese", "Reg", 
      "Reggie", "Reginald", 
      "Rhett", "Rich", "Richard", 
      "Richie", "Rigel", "Rip", "River", 
      "Rob", "Robbie", "Robert", "Roberto", "Rod", "Roderick", "Rodney",
      "Rodrigo", "Roger", "Roland", "Ron", "Ronald", "Ronaldo", "Ronnie", "Roosevelt", "Rorian", 
      "Rory", "Ross", "Rudolf", "Rudolph", "Rufus", "Russ", "Russell", "Rusty", "Rutherford", "Ryan", 
      "S.", "Sal", "Sam", "Sammy", "Samson", "Samuel", "Saul", "Sawyer", "Scott", "Seamus", "Sean", "Sebastian", "Seth", "Shane", 
      "Shannon", "Shaun", "Shawn", "Sherman",
      "Shooter", "Silas", "Sonny", "Squire", "Stacey", "Stan", 
      "Stanley", "Stefan", "Stephan",
      "Stephen", "Sterling", "Steve", "Steven", "Stewart", 
      "Stuart", "Syd", "Sydney", "Sylvester",
      "T.", "Tay", "Taylor", "Ted", "Terrance", "Terry", "Thad", "Thadeus", "Theodore", "Tim", "Timothy", "Timmy", "Todd", "Tony", "Trace", "Travis", "Trent", 
      "Trenton", "Trevor", 
      "Trey", "Treyvon", "Trip", "Troy", "Tyler", "Tyrese", "Tyrone", "Tyson",
      "U.", "Ulf", "Ulfred", "Ulred", "Ulysses", "Uriah", "Uther", 
      "V.", "Van", "Vance", "Varro", "Vaughn", "Vince", "Vincent", "Vinny", "Vonn",
      "W.", "Wade", "Walker", "Walt", "Walter", "Wayne", "Wendell", "Weston", "Will", "William", "Willis", "Willy", "Wilson", 
      "Woodrow", "Woody", "Wyatt", 
      "X.", "Xander", "Xavier", 
      "Y.", "Yaron", "York", "Yuri", "Yves",
      "Z.", "Zach", "Zane", "Zeke", "Zion"
      ]
    female_first_names = [ 
      "A.", "Abby", "Abigail", "Abilene", "Abriana", "Acacia", "Ada", "Adalia", "Adalina", "Adana", "Adele", "Adelaide", 
      "Adena", "Adiline", "Addison", "Adrian", "Adriana", "Agatha", "Agnes", "Ainsley", "Aisha", "Akiva", "Alana",
      "Alayne", "Alberta", "Aleah", "Alena", "Alessandra", "Alexa", "Alexandra", "Alexandria", "Alexi", "Alexis", 
      "Alfreda", "Alice", "Alicia", "Alina", "Alison", "Alita", "Allison", "Alma", "Alona", "Althea", "Alva", 
      "Alyssa", "Ama", "Amadine", "Amalea", "Amanda", "Amarantha", "Amari", "Amber", "Amelia", "Ambrosia", "Amethyst",
      "America", "Amilia", "Amorita", "Amy", "Ana", "Anabelle", "Analeigh", "Analise", "Anastasia", "Andi", "Andra",
      "Andrea", "Aneisha", "Angel", "Angela", "Angelica", "Angelina", "Angie", "Anita", "Anjelika", "Anna", 
      "Antoinette", "Anya", "Aphrodite", "April", "Arabella", "Arcadia", "Aretha", "Argentina", "Ariana", "Arleen",
      "Artemis", "Arwin", "Arya", "Asha", "Ashley", "Ashlyn", "Aspen", "Astrid", "Aubrey", "Audra", "Audrey",
      "Augustina", "Aurielle", "Aurora", "Autumn", "Ava", "Avalon", "Aya", "Azalia",
      
      "B.", "Babette", "Bailey", "Bambi", "Barb", "Barbara", "Bea", "Beatrice", "Beatrix", "Becca", "Becky", "Belinda", "Belka", 
      "Bella", "Belle", "Berkeley",
      "Bernadette", "Bernadine", "Bernice", "Bertha", "Bess", "Bet", "Beth", "Bethany", "Bethel", "Betsy", "Betty", "Beverly", "Bianca", 
      "Bijou", "Billy", "Birdie", "Blair", 
      "Blake", "Blakeley", "Blanche", "Blessing", "Bliss", "Blithe", "Blondie", "Blossom", "Blue", "Bo", "Bobbie", 
      "Bonnie", "Brandy", "Breanne", "Bree", "Brenda", 
      "Brianne", "Bridget", "Brienne", "Brin", "Briony", "Brit", "Britney", "Brittany", "Brooke", "Brooklyn", "Brynn", "Bunny",
      
      "C.", "Caitlin", "Camelia", "Camilla", "Cammie", "Candice", "Candi", "Caprice",
      "Cara", "Carey", "Carissa", "Carla", "Carline", "Carlita", "Carly", "Carmela", "Carol", "Caroline", 
      "Carrie", "Cassaundra", "Cassidy", "Cat", "Catalina", "Caterina", "Catherine", 
      "Cathy", "Cecilia", 
      "Celeste", "Celine", "Cessie", "Chandra", "Chanel", "Chantel", "Charese", "Charity", "Charlene", 
      "Charlotte", "Chastity", "Chelsea", "Cherish", "Cheryl",
      "Chevonne", "Cheyenne", "Chloe", "Chris", "Chrissy", "Christa", "Christen", "Christina", "Christine", "Christy", "Cicilia", "Cicily", 
      "Cinderella", "Cindy", "Clair", "Clarice", "Clarinda", "Clarissa", "Claude", "Claudia", "Clementine", "Cleo", "Clorinda",
      "Codi", "Cody", "Coleen", "Colette", "Connie", "Constance", "Cora", "Coral", "Coraline", "Cordelia", "Corey", "Corina", "Corinne",
      "Courtney", "Crystal", "Cynthia",
      
      "D.", "Dahlia", "Dailey", "Daisy", "Dalisha", "Dallas", "Dana", "Dani", "Danica", "Daniella", "Danielle", "Danique", 
      "Daphne", "Darby", "Darcy", "Dariah", "Darla", 
      "Darlene", "Daryl", "Davita", "Dawn", "Dayna", "Daytona",
      "Deana", "Deb", "Debbi", "Deborah", 
      "Dee", "Deedee", "Delaney", "Delilah", "Delma", "Deloris", "Demi", "Dena",
      "Denise", "Desi", "Desiree", "Destiny", "Diamond", "Diana", "Diane", "Dierdre", "Dionna", "Dixie", "Dolly", "Dolores", "Dominique", 
      "Donna", "Dora", "Dori", "Dorinda",
      "Dorine", "Doris", "Dorothy", "Dotty", "Drea", "Druscilla",
      
      "E.", "Eden", "Edith", "Eleanor", "Elena", "Elise", "Elizabeth", "Eloise", "Elowyn", "Ember", "Emma", "Emerald", "Emogen", "Esme", 
      "Esmerelda", "Eva", 
      "Eve", "Evelyn", "Ever", "Everly",
      
      "F.", "Fae", "Faith", "Fanny", "Fawn", "Fay", "Felicia", "Fiona", "Flo", "Florence", "Fran", "Francesca", 
      
      "G.", "Gabby", "Gabriella", "Gabrielle", "Gay", "Gayle", "Gena", "Genevieve", "Georgia", "Geraldine", "Ginger", "Glenda", "Gloria", "Glory", 
      "Grace", "Gretchen", "Gwyn", "Gwyndalyn", "Gwyneth", 
      
      "H.", "Hanna", "Hannah", "Hayley", "Hazel", "Helga", "Henrietta", "Hermione", "Holly", "Hope", "Hunter",
      
      "I.", "Imogen", "Ingrid", "Irene", "Ireland", "Irma", "Isabelle", "Ivy",
      
      "J.", "Jaime", "Jamie", "Janelle", "Janet", "Janice", "Janine", "January", "Jay", "Jean", "Jen", "Jennifer", "Jenny", "Jude", "Judy", 
      "June", "Justine", 
      
      "K.", "Kacy", "Kat", "Kate", "Katherine", "Kay", "Kayla", "Kendall", "Kendra", "Kendyl", "Kim", "Kimber", "Kimberly", "Kyler", "Kylie",
      
      "L.", "Lacey", "Ladawn", "Ladonna", "Lake", "Lakeisha", "Lana", "Laurel", "Lauren", "Laurie", "Lavender", "Leah", "Leigh", "Lena", 
      "Lexi", "Leticia", "Liberty", "Linda", "Lisa", 
      "Lisbeth", "Lois", "Louisa",
      "Louise", "Lucy", "Luna", "Lynn", "Lynnette",
      
      "M.", "Macy", "Madonna", "Mae", "Maggie", "Masie", "Marcy", "Margaret", "Margo", "Maria", "Mariah", "Marigold", 
      "Martha", "Martina", "Mary", "Matilda",
      "Maude", "Maurine", "Max", "Maxine", "May", "Meg", "Megan",
      "Melania", "Melanie", "Melody", "Mercedes", 
      "Meredith",
      "Merrivale", "Mia", "Michaela", "Michelle",
      "Mila", "Mildred", "Milly", "Missy", "Misty",
      "Monica", "Monique", "Murielle", "Murietta", "Muse", "Musetta", "Mya",
      
      "N.", "Nadia", "Nadine", "Nancy", "Nelly", "Nettie", "Nina", "Noelle", "Nora", "Norine",
      
      "O.", "Oakley", "Octavia", "Odessa", "Odette", "Olga", "Olive", "Olivia", "Opal", "Oriana",
      
      "P.", "Pam", "Pamela", "Paris", "Patricia", "Patty", "Paula", "Paulene", "Paulette", "Penelope", "Penny", 
      "Phoebe", "Phoenix", "Pia", "Piper",
      
      "Q.",
      
      "R.", "Rachel", "Rae", "Rain", "Reagan", "Reba", "Rebecca", "Reece", "Rena", "Renee", "Rhianna", "Rhiannon", "Rhonda", "Ripley", "Roberta", 
      "Robin", "Rochelle", "Roquelle", "Rosa", "Rose", "Rowen", "Roxanna", "Roxanne", "Roxy", "Ruby", "Rumor", "Ruth",
      
      "S.", "Sage", "Sally", "Sam", "Sammy", "Sandy", "Sarah", "Scarlett", "Shana", "Shannon", "Shauna", "Shawna", "Sherry", "Sheryl", "Sierra", "Skye", 
      "Skyler", "Snow", "Solest", "Stacey", "Starla", "Stella", "Steph", "Stephanie", "Sterling", "Stormy", "Summer", "Susan", 
      "Susanna", "Susie", "Sydney",
      
      "T.", "Tabby", "Tabitha", "Tamara", "Tammy", "Taylor", "Terri", "Theresa", "Tiffany", "Tilda", "Tracey", "Trin", "Trinity", "Trixy", "Trudy",
      
      "U.", "Ulla", "Ulyanna", "Uma", "Ursula",
      
      "V.", "Velvet", "Vera", "Verona", "Veronica", "Vesper", "Vicki", "Victoria", "Violet", "Virgina", "Vivian",
      
      "W.", "Wanda", "Wendy", "Whisper", "Whitney", "Wilhemina", "Willa", "Willow", "Winter",
      
      "X.", 
      
      "Y.", "Yasmine", "Yolanda", "Yvonne", 
      
      "Z.", "Zara", "Zelda", "Zena", "Zoe", "Zora"
    ]
      
    surnames = [
      "Aberdine", "Abraham", "Abrams", "Acosta", "Adams", "Afton", "Agosti", "Aguado", "Ali", "Allen", "Almond", "Almondson", 
      "Amadori", "Amundsen", "Anders", "Anderson", "Anthony", "Anton", "Antonelli", "Antonis", "Aquino", "Archer", "Archilletta", "Armor", "Aslan",
      "Augustine", "Austin",
      "Bach", "Bachmann", "Bacon", "Bailey", "Baines", "Baker", "Bale", "Ball", "Ballard", "Barajas", "Barrett", "Barry",
      "Bass", "Bateman", "Bates", "Bautista", "Beaufort", "Beaumont", "Bechtel", "Beck", "Becker", "Beckett", "Beckford", "Beckham",
      "Belcher", "Bell", "Bellamy", "Belrose", "Benitez", "Bennett", "Benny", "Benson", "Berg", "Berger", "Bergman", "Berry", "Best", "Beyer", 
      "Black", "Blair", "Blake", "Bleaker", "Blue", "Bond", "Bonds", "Bone", "Bonner", "Booker", "Boone", 
      "Boot", "Bosch", 
      "Boyce", "Bradford", "Bradley", "Brand", "Branson", "Brant", "Brian", "Briar", "Britton", "Broderick", "Brook", "Brooks", "Brown", "Bruce", "Bruno", 
      "Bryant", "Bryce", "Buck", "Buckle", "Buckley", "Buckner", "Buhl", "Buhler",  "Bull", "Buller", "Bullock", "Burns", "Bush", "Butler", "Byers",
      "Caesar", "Cabrera", "Caesar", "Calahan", "Cameron", "Campano", "Campo", "Cannon", "Cap", "Caplin",
      "Cardiff", "Cardin", "Cardozo", "Carey", "Carl", "Carlen", "Carlisle", "Carlsbad", "Carlyle", 
      "Carmichael", "Carmody", "Carpenter", "Carrington", "Carter", "Cartwright", "Carvel", "Carver", "Cary", 
      "Casper", "Cassidy", "Castillo", "Castle", "Castro", "Cavallo", "Cavendale", "Cedeno",
      "Chadwick", "Chaney", "Channing", "Chaplain", "Chapman", "Charles", "Chavez",
      "Chen", "Chester", "Chevalier", "Choi", "Christianson", "Christensen", "Christopher", "Clark", "Clay", "Clayton", "Cleary", 
      "Cleinder", "Clemens", "Clemenson",
      "Clement", "Cleveland", "Cliff", "Clifton", "Cline",
      "Cochran", "Coelho", "Cohen", "Coke", "Cole", "Coleman", "Colombo", "Conner", "Conners", "Connery", "Conrad", "Cook", "Cooper", "Copper",
      "Copperfield", "Cormier", "Cornell", "Costa", "Cox", "Cranston", "Crawfod", "Crisp", "Crispin", "Cross", 
      "Crow", "Crowley", "Cruz", "Cuesta", "Cullen", "Cut", 
      "Cutlip", "Cutter",
      "Dade", "D'Amore", "Dance", "D'Angelo", "Daniels", "Danielson", "Dash", "Davenport", "Davers", "David", "Davidson", "Davis", "Deck", "Decker", "Dela Cruz", 
      "Delaney", "Dell", "Dench", "Denton", "Denver", "Derrick", "Deruda", "de Silva", "Devin", "De Vito", "Diver", "Dix", "Dixon", "Doe", "Doherty", 
      "Domingo", "Dominguez", "Donario",
      "Donchesky", "Dove", "Dover", "Downing", "Dragon", "Drake", "Dressler",
      "Drew", "Dublin", "Dubois", "Duchamps", "Duke", "Dumont", "Dunwich", "Dupont", "Durant", "Dutch", "Dutcher", "Duval",
      "Eaton", "Eccles", "Eccleston", "Edgar", "Edgerton", "Eduardo", "Elias", "Elijah", 
      "Elizabeth", "Ellery", "Elliott", "Ellis", "Ellison", "Elmer", "Elrod", "Elway", "Elwood", "Ender", "Endicott", "Engle", 
      "Englewood", "Eperspecher", "Erickson", 
      "Esker", "Esparza", 
      "Espinosa", "Espinoza", "Esteban", "Estevez", "Estrada", "Eugene", 
      "Faber", "Fabiano", "Fan", "Faucher", "Faucheux", "Faulk", "Faulkner", "Faust", "Favreau", "Fay", "Ferguson", "Fernando", 
      "Ferrera", "Ferrari", "Fillmore", "Finch", "Fincher", "Fink", "Finn", "Finnegan", "Finney", 
      "Fitz", "Fitzgerald", "Fitzpatrick", "Flag", "Flake", "Flint", "Flynn", "Focker", "Foler", "Foley", "Fontaine", "Ford", 
      "Forester", "Forrest", "Fortin", "Foss", "Fowler", "Fox", "Frank", "Franklin", 
      "Frasier", "French", "Friedman", "Frost", "Fujiwara", "Fuller", "Fulton",
      "Gainer", "Gaines", "Gall", "Gallagher", "Galloway", "Galt", "Gander", "Ganton", "Garber", "Garreth", "Garrett", "Garcia", "Gay", "Gaylord", "Gerber", "Gering", 
      "Gill", "Gilmore", "Givens", "Glover", "Goetze", "Gold", "Gomez", "Gonzalez", "Gordon", "Goslin", "Gosling", "Granden",
      "Grant", "Gray", "Green", "Grey", "Griggs", "Gull", "Gunderson", "Gunn", "Gurung", "Guthrie", "Guy",
      "Hackett", "Hadley", "Hall", "Ham", "Hamilton", "Hamm", "Hammond", "Han", "Hand", "Hanson", "Harden", "Hardy", "Harris", 
      "Harrison", "Hart", "Hatch", "Hatcher", "Hatmaker",
      "Hawkins", "Haynes", "Heim", "Heimler", "Hendricks", "Hendrickson", "Herron",
      "Hicks", "Hilton", "Hines", "Hitch", "Hitchcock", "Hitchens", "Holt", "Holter", "Hong", "Horn", "Horne", "Horner", "Horton", 
      "House", "Houston", "Howard", "Huang", "Hughes", "Hunt", "Hunter", "Huron", "Hussel", "Hutch", "Hutchins", "Hutchinson", "Hwang",
      "Idder", "Ilton", "Ishida", "Ito", "Ives", "Ivers", "Iverson", "Ivy",
      "Jackson", "James", "Jameson", "Jeeves", "Jeffers", "Jefferson", "Jenkins", "Jensen", 
      "Jeong", "Jester", "Jives", "Joanna", "Johanson", "Johnson", "Jones", "Jordan", "Jorgensen", "Jovovich", "Juan", "Justice", 
      "Kacey", "Kato", "Katz", "Keaton", "Kellogg", "Kendra", "Kendricks", "Kennedy", "Kenny", "Khadka", "Khan", "Khatun", 
      "Kilpatrick", "Kilroy", "Kim", "Kimber",
      "King", "Kingsbury", "Kingsley", "Kingston", "Klein", "Knight", "Kobayashi", "Koch", "Kraft", "Kumar",
      "Labato", "Lam", "Lamb", "Lamberson", "Lambert", "Lance", "Land", "Landers", "Landon", "Landry", "Lane", "Larimore", "Larson",
      "Le", "Lebowsky", "Leibowitz", "Lee", "Leroy", "Levi", "Lexington", "Li", "Lin", "Lincoln", "Lister", 
      "Liston", "Locke", "Lockheart", "Logan", "Loker", "Lombardi", "Lombardo", "London", "Love", "Lowry", "Luther", "Lutterman",
      "MacArthur", "MacCleod", "MacDonald", "MacElroy", "MacEvoy", "Mader", "Mann", "Manning", "Manson", "Marsh", "Marshall", "Martin", "Martinez", "Masaka", "Masters", 
      "Masterson", "Masuda", "Mathern", "Mathers", "Matsuda", "Matsumoto", 
      "May", "Mayfield", "Mays", "McCabe", "McCall", "McCarthy", "McCay", "McDonald", "McEvoy", "McLoughlin", "McCormick", 
      "McMillan", "McNabb", "McNamara", "McNeil", "Mendoza", "Mercer", "Meyer", "Meyers", "Michaels", 
      "Miller", "Millsaps", "Minson", "Mitchell", "Mond", "Moreno", "Morgan", "Morris", "Morrison", "Morse", "Mortonson", "Mueller", 
      "Muir", "Muirbrook", "Munn", "Munson", "Muridian", "Myer",
      "Nakamura", "Naples", "Nelson", "Newbauer", "Newman", 
      "Ngo", "Nguyen", "Nieman", "Night", "Nightingale", "Nixon", "Norrington", "Norris", "Nuberg",
      "Oakley", "Obermeyer", "O'Brian", "O'Malley", "Ono", "O'Reilly", "Ortiz", "Orville", "Oscar", "Oscara", "Owen", "Owens", "Overby",
      "Pace", "Padilla", "Pagillo", "Palmer", "Pan", "Paris", "Park", "Parsons", "Patel", "Pendleton", "Penn", "Penny", "Pepper", 
      "Peters", "Peterson", 
      "Petrovic", "Phan", "Phillips", "Phoenix", "Picard", "Pill", "Piller", "Pillman", "Pischke",
      "Pitt", "Pittman", "Pitts", "Pittsenbarger", "Pittman", "Poe", "Pope",
      "Popper", "Potter", "Potts", "Powell", "Preston", "Price",
      "Prince", "Princeton", "Pruitt", "Pryor",
      "Quaid", "Quan", "Quibble", "Quick", "Quill", "Quimby", "Quincy", "Quinn",
      "Rafferty", "Ragsdale", "Rakde", "Rake", "Raker", "Ramirez", "Ramos", "Rasmussen", "Red", "Redondo", "Reece", "Reed", 
      "Reese", "Rembrandt", "Remington", 
      "Render", "Renstrom", "Renz", "Renzo", "Reyes", "Reynolds", 
      "Rice", "Richard", "Richards", 
      "Richardson", "Ricketts", "Rider", "Riddle", "Rinner", "Rivera", "River", "Rivers", "Roach", "Robbins", "Roberts", "Robin", "Robinette", "Robinson", "Robles", "Rodman",
      "Rodrigo", "Rodriguez", "Rogers", "Rohr", "Rome", "Romeo", "Romero",
      "Roosevelt", "Ross", "Ruiz", "Ruse", "Russell", "Rydell", 
      "Samson", "Sanchez", "Sanders", "Sand", "Sanderson", "Sands", "Santos", "Sasaki", "Sather", "Sato", "Sawyer", "Schmermund",
      "Schwartz", "Scott", "Searfoss", "Seaton", "Seaver", "Sena", "Seneca", "Sesker", "Shane", "Shannon", "Shapiro", 
      "Sherman", "Shire", "Shock", "Shockley", "Sierra", "Silva", 
      "Silver", "Silverberg", "Simmons", "Simms", "Simon", "Simons", "Simpson", 
      "Singh", "Smith", "Smithers", "Snell", "Snelty", "Snow", "Snyder", "Song", "Spencer", "Spoon", "Spooner", "Stack", "Stackhouse", "Stand",
      "Stanford", "Stanley", "Starr", "Stedman", "Stefano", "Stephens", 
      "Sterling", "Stevens", "Stevensen",
      "Stewart", "Stout", "Stover", "Strauss", "Strand", "Stroud", "Sun", "Suzuki", "Swan", "Swanson", "Swenson", "Sydney", "Sylvester", 
      "Tack", "Tadich", "Taft", "Tafton", "Talar", "Talon", "Tanaka", "Tanner", "Tate", "Taylor", "Tench", "Thapa", "Thatch", "Thatcher", "Thomas", "Thompson", 
      "Tobias", "Tobin", "Tomovich", "Took", "Trainer", "Trembley", "Troy", "Tull", "Tully", "Turcott", "Turner", "Tran", "Tyler", "Tyson",
      "Ubrick", "Underton", "Underwood", 
      "Vale", "Vance", "Vandall", "Van Winkle", "Vicente", "Vince", "Vincent", "Virdell", "Vogle", "Vogt",
      "Walker", "Wall", "Waller", "Wang", "Ward", "Warden", "Waring", "Warner", "Wash", "Washburn", "Washington", "Watkins", "Watson", "Wayne", "Weber", 
      "Webb", "Webber", "Wei", "Weir", "Welch", 
      "Wendell", "Wendy", "Werner", 
      "West", "Weston", "White", "Whitman", "Whittle", 
      "Williams", "Wilson", "Winchester", "Wind", "Windleton", "Witherspoon",
      "Wolcott", "Wolf", "Wolfe", "Wong", "Wool", "Woolard", "Worth", 
      "Worthington", "Worthy", "Wright", "Wrigley",
      "Xanth", "Xavier", 
      "Yadav", "Yamada", "Yamaguchi", "Yamamoto", "Yang", "Yarrow", "Yates", "Yeaton",
      "Yeats", "Yellow", "Yen", "Yoon", "York", "Yosef", "Yoshida", "Young",
      "Zane", "Zagorsky", "Zepeda", "Zhang", "Zimmerman"
      ]
      
    ran_male1 = male_first_names.sample
    ran_male2 = male_first_names.sample
    ran_male3 = male_first_names.sample
    ran_male4 = male_first_names.sample
    ran_male5 = male_first_names.sample
    ran_male6 = male_first_names.sample
    ran_male7 = male_first_names.sample
    ran_male8 = male_first_names.sample
    ran_male9 = male_first_names.sample
    ran_male10 = male_first_names.sample
    ran_male11 = male_first_names.sample
    ran_male12 = male_first_names.sample
    
    ran_female1 = female_first_names.sample
    ran_female2 = female_first_names.sample
    ran_female3 = female_first_names.sample
    ran_female4 = female_first_names.sample
    ran_female5 = female_first_names.sample
    ran_female6 = female_first_names.sample
    ran_female7 = female_first_names.sample
    ran_female8 = female_first_names.sample
    ran_female9 = female_first_names.sample
    ran_female10 = female_first_names.sample
    ran_female11 = female_first_names.sample
    ran_female12 = female_first_names.sample
    
    ran_surname1 = surnames.sample
    ran_surname2 = surnames.sample
    ran_surname3 = surnames.sample
    ran_surname4 = surnames.sample
    ran_surname5 = surnames.sample
    ran_surname6 = surnames.sample
    ran_surname7 = surnames.sample
    ran_surname8 = surnames.sample
    ran_surname9 = surnames.sample
    ran_surname10 = surnames.sample
    ran_surname11 = surnames.sample
    ran_surname12 = surnames.sample
    ran_surname13 = surnames.sample
    ran_surname14 = surnames.sample
    ran_surname15 = surnames.sample
    ran_surname16 = surnames.sample
    ran_surname17 = surnames.sample
    ran_surname18 = surnames.sample
    ran_surname19 = surnames.sample
    ran_surname20 = surnames.sample
    ran_surname21 = surnames.sample
    ran_surname22 = surnames.sample
    ran_surname23 = surnames.sample
    ran_surname24 = surnames.sample
    
    @name1 = ran_male1 + " " + ran_surname1
    @name2 = ran_male2 + " " + ran_surname2
    @name3 = ran_male3 + " " + ran_surname3
    @name4 = ran_male4 + " " + ran_surname4
    @name5 = ran_male5 + " " + ran_surname5
    @name6 = ran_male6 + " " + ran_surname6
    @name7 = ran_male7 + " " + ran_surname7
    @name8 = ran_male8 + " " + ran_surname8
    @name9 = ran_male9 + " " + ran_surname9
    @name10 = ran_male10 + " " + ran_surname10
    @name11 = ran_male11 + " " + ran_surname11
    @name12 = ran_male12 + " " + ran_surname12
    
    @name13 = ran_female1 + " " + ran_surname13
    @name14 = ran_female2 + " " + ran_surname14
    @name15 = ran_female3 + " " + ran_surname15
    @name16 = ran_female4 + " " + ran_surname16
    @name17 = ran_female5 + " " + ran_surname17
    @name18 = ran_female6 + " " + ran_surname18
    @name19 = ran_female7 + " " + ran_surname19
    @name20 = ran_female8 + " " + ran_surname20
    @name21 = ran_female9 + " " + ran_surname21
    @name22 = ran_female10 + " " + ran_surname22
    @name23 = ran_female11 + " " + ran_surname23
    @name24 = ran_female12 + " " + ran_surname24
  
  end
  
end