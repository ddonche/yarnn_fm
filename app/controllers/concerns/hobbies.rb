module Hobbies
    extend ActiveSupport::Concern
    
    def hobbies
          
        hobby_words = [
            "Acting", "Aikido", "Airsoft", "Alpining", "Animal Husbandry", "Archery", "Astrology", "Axe Throwing",
            "Bagpipes", "Baking", "Ballet", "Ballroom Dancing", "Baseball", "Basketball", "Beer Pong", "Bird Watching", "Blogging", "Board Gaming",
            "Bodybuilding", "Bow Hunting", "Boxing", "Boy Scouts", "Brazilian Jiu Jitsu", "Bullriding",
            "Camping", "Cars", "Checkers", "Chess", "Chinese Checkers", "Cigars", "Civil War Reenactment", 
            "Classic Cars", "Cockfighting", "Competitive Eating", 
            "Conspiracy Theories", "Cooking", "Cosplay", "Cribbage", "Crochet", "CrossFit", "Cross-stitching", 
            "Crossword Puzzles", "Cycling",
            "Dog Breeding", "Drawing", "Drone Operating", "Drumming", "Dungeons and Dragons",
            "Escape Rooms",
            "Farming", "Feminism", "Figure Skating", "Filmmaking", "Fishing", "Foosball", "Fortnite", "Freemasons",
            "Garage Sales", "Gardening", "Geocaching", "Girl Scouts", "Glass Blowing", "Golf", "Graphic Design", "Guitar", "Gymnastics",
            "Hairstyling", "HAM Radios", "Harry Potter", "Hiking", "Hockey", "Home Brewing", "Horseback Riding", "Hot Air Balloons", 
            "Hunting",
            "Ice Fishing", "Ice Sculpting", "Ice Skating", "Improv Comedy", "Instagram Modeling", "Interior Design",
            "Jogging", "Judo",
            "Karaoke", "Karate", "Krav Maga", 
            "LARPing", "Leatherworking", "Listening to Music", "Longboarding",
            "Magic the Gathering", "Makeup Tutorials", "Marathons", "Marching Band", "Mixed Martial Arts", 
            "Model Trains", "Motorcycles", "Muay Thai",
            "Musical Theater",
            "Neighborhood Watch",
            "Olympic Weightlifting", "Online Learning", "Opera", 
            "Paintballing", "Palm Reading", "Photography", "Piano", "Ping Pong", "Podcasting", "Poetry", "Pool", "Pottery", 
            "Powerlifting", "Prepping", "Programming", 
            "Protesting", "Public Speaking", "Puzzles",
            "Quilting",
            "Racecar Driving", "Reading", "Refurbishing Furniture", "Reviewing Products", "Riddles", 
            "Rock Climbing", "Rodeo", "Rugby",
            "Screenwriting", "Scuba Diving", "Sewing", "Shopping", "Shooting Guns", "Singing", 
            "Skateboarding", "Skeet Shooting", "Skiing",
            "Skydiving", "Sled Dog Racing", "Snorkeling", "Snowboarding", "Soccer", "Softball",
            "Songwriting", "Speed Dating", "Spelunking", "Stamp Collecting", "Standup Comedy", "Star Trek", "Star Wars", "Sudoku", 
            "Surfing", "Swimming", "Swing Dancing",
            "Tae Kwon Do", "Tai Chi", "Tarot", "Tennis", "Traveling", "Treasure Hunting",
            "Ultramarathons",
            "Ventriloquism", "Video Games", "Videography", "Violin", "Volleyball",
            "Watching Movies", "Watercolor Painting", "Web Design", "Welding", "Wine-tasting", "Woodworking", 
            "World of Warcraft", "Wrestling", "Writing",
            "Yoga", "Youtubing",
          ]
        
        @hobby1 = hobby_words.sample
        @hobby2 = hobby_words.sample
        @hobby3 = hobby_words.sample
        @hobby4 = hobby_words.sample
        @hobby5 = hobby_words.sample
        @hobby6 = hobby_words.sample
        @hobby7 = hobby_words.sample
        @hobby8 = hobby_words.sample
        @hobby9 = hobby_words.sample
        @hobby10 = hobby_words.sample
        @hobby11 = hobby_words.sample
        @hobby12 = hobby_words.sample
    
          
        job_words = [
            "Accountant", "Acrobat", "Actor", "Adjunct Professor", "Aerospace Engineer", "Airline Attendant", "Airplane Mechanic", 
            "Air Traffic Controller", "Ambassador", "Ambulance Driver", "Angel Investor",
            "Animation Artist", "Anthropologist", "Archaeologist",
            "Architect", "Art Curator", "Art Teacher", "Assassin", "Astronaut", "Astronomer", "Athlete", "Athletic Agent", "Auditor",
            "Babysitter", "Baggage Handler", "Bail Bondsman", "Bailiff", "Baker", "Band Manager", "Bank Manager", 
            "Bank Teller", 
            "Barber", "Barrista", "Bartender", "Bassist", "Beautician", "Beekeeper", "Biologist", 
            "Blacksmith", "Blogger", "Bodyguard", "Bootlegger", "Botanist", "Bounty Hunter", "Brand Inspector", "Bricklayer", "Bursar", "Bus Driver", "Busser", "Butcher", "Butler",
            "Cable Technician", "Campaign Manager", "Camp Counselor", "Card Dealer", "Career Counselor", "Carnival Worker", "Carpenter", "Carpet Layer", 
            "Car Salesman",
            "Cartographer", "Cartoonist", "Caterer", "Cellist", "Census Taker", "Chauffeur", "Chef", "Chemist", 
            "Choir Teacher", "City Planner", 
            "Civil Rights Lawyer", "Cleaner", "Clown", 
            "Coach", "Coal Miner", "Cobbler", "Cocktail Waiter/Waitress", "College Dean", "Commercial Pilot",
            "Computer Programmer", "Computer Repairman", "Con Artist", "Concert Pianist", "Concrete Layer", "Conservationist", 
            "Construction Worker", 
            "Consultant", "Cook", "Copilot", "Coroner", "Court Stenographer",
            "CrossFit Coach", "Crossing Guard", "Country Singer",
            "Data Analyst", "Daycare Worker", "DEA Agent", "Deejay", "Defense Attorney", "Delivery Driver", 
            "Demolitions Expert", "Dental Assistant", "Dentist", "Deputy Sheriff", "Detective", "Dishwasher", 
            "District Attorney", "Ditch Digger", "Divorce Lawyer", "Dock Worker", "Dog Trainer", 
            "Drafter", "Driver", "Drug Dealer", "Dry Cleaner", "Dump Truck Operator",
            "Editor", "Electrician", "Electrical Engineer", "Electronics Repair", "Emergency Dispatch Operator", 
            "Engineer", "Entrepreneur", "Escort", "Ethics Professor", "Event Planner", "Exorcist", "Explosive Ordinance Disposal",
            "Farmer", "Fashion Designer", "Fashion Model", "FBI Special Agent", "Fence Builder", "Ferrier", "Film Critic", 
            "Filmmaker", "Financial Planner", "Firefighter", "Fire Marshall", "Fisherman", 
            "Flight Attendant", "Florist", "Food Critic", "Food Truck Operator", "Foreman", "Fortune Teller", 
            "Foster Parent", "Freelancer", "Funeral Director",
            "Game Designer", "Game Show Host", "Game Tester", "Game Warden", "Garbage Collector", "Gardener", "Genetic Physicist", 
            "Geologist", "Governor", "Graphic Designer", "Grave Digger",
            "Groundskeeper", "Gymnast", "Gym Teacher", "Gynecologist", 
            "Hacker", "Hairstylist", "HAZMAT Technician", "Helicopter Pilot", "Hip-Hop Artist", "Historian", 
            "Homicide Detective", "Horticulturist", "Hospice Nurse", "Host/Hostess", "Hotel Clerk", "Human Resources Manager",
            "Hunting Guide", "HVAC Technician", "Hypnotherapist",
            "Intelligence Analyst", "Interior Designer", "Internal Affairs Officer", "Interpretor", 
            "Inventor", "Investigative Journalist", "Investor",
            "Janitor", "Journalist", "Judge",
            "K-9 Handler", "Kindergarten Teacher",
            "Landscaper", "Librarian", "Life Coach", "Line Cook", "Lineman", "Linguist", "Literary Agent", 
            "Loan Officer", "Loan Shark", "Lobbyist", "Lumberjack", 
            "Machinist", "Magician", "Maid", "Mail Carrier", "Mail Clerk", "Maintenance Worker", "Mall Kiosk Rep", 
            "Manager", "Manicurist", "Marine", "Marketer", 
            "Marriage Counselor", "Mason", "Massage Therapist", "Mayor",
            "Mechanic", "Medic", "Medical Examiner", "Merchant", "Merchant Marine", "Meteorologist", 
            "Metro Conductor", "Military Recruiter", "Missile Defense Technician", "Missionary", "Mobile App Developer",
            "Molecular Biologist", "Mortician", "Mover", "Movie Producer", "Movie Theater Usher", "Museum Curator", "Musician", 
            "Music Producer",
            "Nanny", "Navy SEAL", "Network Technician", "News Anchor", "Nuclear Physicist", "Nurse",
            "Occupational Therapist", "Oil Field Worker", "Ombudsman", "Optometrist", "Orchestra Conductor", "Orchestra Musician",
            "Orthodontist", "Orthopedic Surgeon",
            "Painter", "Paleontologist", "Palm Reader", "Paralegal", "Paramedic", "Parking Enforcement Officer", 
            "Patent Lawyer", "Pawn Broker", "Pediatrition", "Personal Assistant", "Personal Stylist", "Personal Trainer", 
            "Pest Control Technician", "Pharmaceutical Rep", "Philosopher", "Phlebotemist", "Photographer", 
            "Physical Therapist", "Physician", "Physicist", "Pilates Instructor", "Pirate", "Pit Crew Tech", "Pizza Delivery Driver", "Plumber", 
            "Podcaster", "Police Dispatch", "Police Officer", "Police Sketch Artist",
            "Political Analyst", "Political Strategist", "Politician", "Pool Cleaner", "Porter", "Postmaster", "Potter", "PR Rep", 
            "Preacher", "Preschool Teacher", "Priest/Nun", "Prison Guard", "Prison Warden", "Private Investigator", 
            "Professor", "Program Director", "Property Manager", "Prosecutor", "Psychiatrist", "Psychic",
            "Psychologist", "Public Affairs", "Public Defender", "Publisher",
            "Racecar Driver", "Radar Operator", "Radiologist", "Rancher", "Receptionist", "Rescue Diver", "Restaurant Manager", "Rodeo Clown", "Roofer",
            "Sailor", "Salesperson", "School Bus Driver", "School Nurse", "Screenprinter", "Screenwriter", 
            "Scuba Instructor", "Sculptor", "Secret Service Agent", "Security Guard", 
            "Self-defense Instructor", "Senator", "Server", "Sheep Herder", "Sheriff", "Ship Captain", 
            "Ship Navigator", "Skiing Instructor", "Ski Lift Operator", "Skip Tracer", 
            "Skydiving Instructor", "Social Media Influencer", "Social Worker", "Software Engineer", "Soldier",
            "Sommelier", "Sous Chef", "Sociologist",
            "Special Ed Teacher", "Special Forces Operator", "Speech Therapist", "Speech Writer", "Sportscaster", "Spy", "Standup Comedian", 
            "Stock Broker", "Stock Market Analyst", "Street Performer", "Street Sweeper", "Street Vendor", 
            "Studio Musician", "Substitute Teacher",
            "Surgeon", "Sushi Chef", "Sysadmin",
            "Tailor", "Talent Scout", "Talk Show Host", "Tarot Reader", "Tattoo Artist", "Tax Collector", "Taxidermist", "Taxi Driver", "Teacher", "Tech Support", 
            "Telemarketer", "Telephone Operator", "Therapist", "Thief", "Tour Guide", "Train Conductor", "Translator", 
            "Travel Agent", "Truck Driver", "Typesetter",
            "Undercover Officer", "Undertaker", "Underwater Welder", "Urologist",
            "Ventriloquist", "Venture Capitalist", "Veteranarian", "Video Editor", "Videographer", "Violinist", "Virologist",
            "Web Developer", "Wedding Planner", "Welder", "Wood Carver",
            "X-Ray Technician",
            "Yoga Instructor",
            "Zoo Keeper", "Zoologist"
          ]
        
        @job1 = job_words.sample
        @job2 = job_words.sample
        @job3 = job_words.sample
        @job4 = job_words.sample
        @job5 = job_words.sample
        @job6 = job_words.sample
        @job7 = job_words.sample
        @job8 = job_words.sample
        @job9 = job_words.sample
        @job10 = job_words.sample
        @job11 = job_words.sample
        @job12 = job_words.sample
        
        school_words = [
            "A.T. Still University (US)", "Abertay University (GB)", "Abilene Christian University (US)", "Abo Akademi (FI)", "Abu Dhabi Polytechnic (AE)", "Abu Dhabi University (AE)", "Acadia University (CA)", "Adams State University (US)", "Adelphi University (US)", "Adler University (US)", "Adrian College (US)", "Agnes Scott College (US)", "Air Force Institute of Technology (US)", "Alabama A&M University (US)", "Alabama University (US)", "Alaska Bible College (US)", "Alaska Pacific University (US)", "Albany State University (US)", "Albert Magnus College (US)", "Albion College (US)", "Albright College (US)", "Alcorn State University (US)", "Alderson Broaddus University (US)", "Alfred Nobel University (UA)", "Alfred State College (US)", "Alfred University (US)", "Algoma University (CA)", "Alice Lloyd College (US)", "Allen University (US)", "Altai State University (RU)", "Alverno College (US)", "Amberton University (US)", "Ambrose University (CA)", "American Baptist College (US)", "American Jewish University (US)", "Amherst College (US)", "Anderson University (US)", "Andrews University (US)", "Appalachian Bible College (US)", "Appalachian State University (US)", "Aquinas College (US)", "Arcadia University (US)", "Argosy University (US)", "Arizona Christian University (US)", "Arizona State University (US)", "Arkansas Baptist College (US)", "Arkansas State University (US)", "Arkansas Tech University (US)", "Arlington Baptist University (US)", "Art Academy of Cincinnati (US)", "Asahikawa University (JP)", "Asbury University (US)", "Aston University (GB)", "Athens School of Fine Arts (GR)", "Athens State University (US)", "Athens University of Economics and Business (GR)", "Auburn University (US)", "Australian Catholic University (AU)", 
            "Babcock University (NG)", "Babson College (US)", "Bacone College (US)", "Badr University in Cairo (EG)", "Baker College (US)", "Baker University (US)", "Baldwin Wallace University (US)", "Ball State University (US)", "Bangalore University (IN)", "Bangkok University (TH)", "Baptist Bible College (US)", "Barclay College (US)", "Bard College (US)", "Barnard College (US)", "Barton College (US)", "Baylor University (US)", "Boston College (US)", 
            "California Institute of Technology (US)", 
            "Dartmouth College (US)", 
            "Emory University (US)", 
            "Florida State University (US)", 
            "Georgetown College (US)", 
            "Harvard University (US)", 
            "Iowa State University of Science and Technology (US)", 
            "Johns Hopkins University (US)", "John F. Kennedy University (US)", 
            "Kansas State University (US)", "Kentucky State University (US)", 
            "Lake Forest College (US)", "Lancaster University (GB)", "Limerick Institute of Technology (IE)", "Liverpool Hope University (GB)",
            "Massachussetts Institute of Technology (US)", "Metropolitan State University (US)",
            "Nagano University (JP)", "Nazareth College (US)", "Nelson Mandela University (ZA)", "New England College of Business (US)", 
            "Oakland University (US)", "Oberlin College (US)", "Odessa National University (UA)", "Ohio University (US)", 
            "Penn State University (US)", "Piedmont College (US)", "Portland State University (US)",
            "Qinzhou University (CN)", "Queen's University (CA)", "Queensland University of Technology (AU)",
            "Rama University (IN)", "Reed College (US)", "Regis University (US)", "Rhode Island School of Design (US)", "RIT Croatia (HR)", "Robert Gordon University (GB)", 
            "Sacred Heart College (PH)", "Saigon University (VN)", "Saint Augustine College (US)", "San Diego State University (US)", "San Francisco Art Institute (US)", "Seattle Pacific University (US)", "Sejong University (KR)", "Seoul National University (KR)", "Seton Hall University (US)", "Shanghai Institute of Technology (CN)", "Siberian State Aerospace University (RU)", "Siddharth University (IN)", 
            "Technion - Israel Institute of Technology (IL)", "Technische Universität Hamburg (DE)", "Technological Educational Institute of Crete (GR)", "Temple University (US)", "Texas A&M University (US)", "Texas Tech University (US)", "Thomas Jefferson School of Law (US)", "Tokyo University of Science (JP)", "Toulouse Business School (FR)", "Trent University (CA)", 
            "United States Air Force Academy (US)", "United States Coast Guard Academy (US)", "United States Military Academy (US)", "United States Naval Academy (US)", "Universidad Andina Simón Bolivar (BO)", "University of Chicago (US)", "University of Chichester (GB)", "University of Dubai (AE)", "University of Oxford (GB)", "Utah State University (US)",
            "Valdosta State University (US)", "Vancouver Island University (CA)", "Vanderbilt University (US)", "Vassar College (US)", "Victoria University (AU)", "Virginia State University (US)", 
            "Wake Forest University (US)", "Washington State University (US)", "Wilmington College (US)", 
            "Xavier University (US)", 
            "Yale University (US)", "Yonsei University (KR)", "Youngstown State University (US)", 
            "Zanzibar University (TZ)", "Zeppelin University (DE)", 
            ]
        
        @school1 = school_words.sample
        @school2 = school_words.sample
        @school3 = school_words.sample
        @school4 = school_words.sample
        @school5 = school_words.sample
        @school6 = school_words.sample
        @school7 = school_words.sample
        @school8 = school_words.sample
        @school9 = school_words.sample
        @school10 = school_words.sample
        @school11 = school_words.sample
        @school12 = school_words.sample
        
    end
  
end