module Hobbies
    extend ActiveSupport::Concern
    
    def hobbies
          
        hobby_words = [
            "Aikido", "Airsoft", "Animal Husbandry", "Archery",
            "Baking", "Ballet", "Ballroom Dancing", "Baseball", "Basketball", "Bird Watching", "Blogging", "Board Gaming",
            "Bodybuilding", "Boxing", "Brazilian Jiu Jitsu", "Bullriding",
            "Camping", "Cars", "Cigars", "Cooking", "Cosplay", "Crochet", "CrossFit", "Cross-stitching", "Crossword Puzzles",
            "Dog Breeding", "Drawing", "Drumming", "Dungeons and Dragons",
            "Escape Rooms",
            "Farming", "Fishing", 
            "Garage Sales", "Gardening", "Geocaching", "Golf", "Graphic Design", "Guitar", "Gymnastics",
            "Hairstyling", "Hiking", "Home Brewing", "Horseback Riding", "Hunting",
            "Ice Fishing", "Interior Design",
            "Jogging", "Judo",
            "Karaoke", "Karate",
            "LARPing", "Listening to Music", 
            "Makeup Tutorials", "Marathons", "Mixed Martial Arts", "Model Trains", "Muay Thai",
            "Online Learning", "Opera", 
            "Paintballing", "Podcasting", "Poetry", "Pool", "Prepping", "Programming", "Public Speaking",
            "Quilting",
            "Racecar Driving", "Reading", "Refurbishing Furniture", "Reviewing Products", "Rodeo",
            "Scuba Diving", "Sewing", "Shopping", "Shooting Guns", "Skeet Shooting",
            "Skydiving", "Snorkeling", "Soccer", "Softball",
            "Songwriting", "Spelunking", "Stamp Collecting", "Standup Comedy", "Sudoku", "Swimming", "Swing Dancing",
            "Tae Kwon Do", "Tai Chi", "Tennis", "Traveling",
            "Video Games", "Volleyball",
            "Watching Movies", "Watercolor Painting", "Web Design", "Welding", "Wine-tasting", "Woodworking", "Wrestling", "Writing",
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
            "Accountant", "Acrobat", "Actor", "Aerospace Engineer", "Airline Attendant", "Airplane Mechanic", 
            "Air Traffic Controller", "Ambassador", 
            "Animation Artist", "Anthropologist",
            "Architect", "Art Curator", "Astronaut", "Astronomer", "Athlete", "Athletic Agent",
            "Babysitter", "Baggage Handler", "Bail Bondsman", "Bailiff", "Baker", "Bank Manager", "Bank Teller", "Barber", "Barrista", "Bartender", "Biologist", 
            "Blacksmith", "Blogger", "Bounty Hunter", "Busser", "Bricklayer", "Bus Driver", "Butcher", "Butler",
            "Cable Technician", "Campaign Manager", "Card Dealer", "Carnival Worker", "Carpenter", "Carpet Layer", "Cartoonist", "Caterer", "Chauffeur", "Chef", "Chemist", "Cleaner", "Clown", 
            "Coach", "Coal Miner", "Cocktail Waiter/Waitress", "College Dean", "Commercial Pilot",
            "Computer Programmer", "Conservationist", "Construction Worker", "Consultant", "Cook", "Coroner", "Court Stenographer",
            "CrossFit Coach",
            "Daycare Worker", "DEA Agent", "Deejay", "Defense Attorney", "Delivery Driver", "Dental Assistant", "Dentist", "Deputy Sheriff", "Detective", "Dishwasher", 
            "District Attorney", "Dock Worker", "Dog Trainer", "Driver", "Dry Cleaner",
            "Editor", "Electrician", "Electrical Engineer", "Electronics Repair", "Emergency Dispatch Operator", "Engineer", "Entrepreneur", "Escort",
            "Farmer", "Fashion Designer", "Fashion Model", "FBI Special Agent", "Ferrier", "Film Critic", "Filmmaker", "Firefighter", "Fisherman", 
            "Flight Attendant", "Florist", "Food Critic", "Fortune Teller", "Funeral Director",
            "Game Designer", "Game Show Host", "Game Tester", "Game Warden", "Gardener", "Genetic Physicist", "Governor", "Graphic Designer", 
            "Groundskeeper", "Gymnast", "Gynecologist", 
            "Hairstylist", "Helicopter Pilot", "Historian", "Homicide Detective", "Hospice Nurse", "Host/Hostess", "Hotel Clerk",
            "Hunting Guide", "Hypnotherapist",
            "Interior Designer", "Internal Affairs Officer", "Interpretor", "Investigative Journalist", "Investor",
            "Janitor", "Journalist", "Judge",
            "Kindergarten Teacher",
            "Librarian", "Life Coach", "Line Cook", "Linguist", "Literary Agent", "Loan Officer", "Lobbyist", "Lumberjack", 
            "Machinist", "Magician", "Maid", "Mail Carrier", "Mail Clerk", "Maintenance Worker", "Mall Kiosk Rep", 
            "Manager", "Manicurist", "Marketer", 
            "Marriage Counselor", "Massage Therapist", "Mayor",
            "Mechanic", "Medic", "Medical Examiner", "Meteorologist", "Metro Conductor", "Military Recruiter", 
            "Molecular Biologist", "Mover", "Movie Producer", "Movie Theater Usher", "Museum Curator", "Musician", 
            "Music Producer",
            "Nanny", "Network Technician", "News Anchor", "Nuclear Physicist", "Nurse",
            "Occupational Therapist", "Oil Field Worker", "Ombudsman", "Optometrist", "Orthodontist", "Orthopedic Surgeon",
            "Painter", "Paralegal", "Paramedic", "Pediatrition", "Personal Assistant", "Personal Stylist", "Personal Trainer", 
            "Pest Control Technician", "Pharmaceutical Rep", "Phlebotemist", "Photographer", 
            "Physical Therapist", "Physician", "Physicist", "Pilates Instructor", "Pizza Delivery Driver", "Plumber", 
            "Podcaster", "Police Dispatch", "Police Officer", 
            "Political Analyst", "Political Strategist", "Politician", "Porter", "Postmaster", "PR Rep", "Preacher", "Preschool Teacher", "Priest/Nun", "Prison Guard", "Prison Warden", "Private Investigator", "Professor", "Program Director", "Prosecutor", "Psychiatrist", 
            "Psychologist", "Public Affairs", "Publisher",
            "Radiologist", "Rancher", "Receptionist", "Rescue Diver", "Restaurant Manager", "Rodeo Clown", "Roofer",
            "Sailor", "Salesperson", "School Bus Driver", "Screenprinter", "Screenwriter", "Scuba Instructor", "Sculptor", "Security Guard", 
            "Self-defense Instructor", "Senator", "Server", "Sheriff", "Skiing Instructor", "Ski Lift Operator", "Skydiving Instructor", "Social Worker", "Software Engineer",
            "Sommelier", "Sous Chef", "Sociologist",
            "Special Ed Teacher", "Speech Therapist", "Speech Writer", "Sportscaster", "Spy", "Standup Comedian", 
            "Stock Broker", "Stock Market Analyst", "Surgeon", "Sushi Chef",
            "Tailor", "Talent Scout", "Talk Show Host", "Tattoo Artist", "Taxidermist", "Taxi Driver", "Teacher", "Tech Support", 
            "Telemarketer", "Telephone Operator", "Therapist", "Tour Guide", "Train Conductor", "Translator", 
            "Travel Agent", "Truck Driver", "Typesetter",
            "Undercover Officer", "Undertaker", "Underwater Welder", "Urologist",
            "Veteranarian", "Video Editor", "Videographer", "Virologist",
            "Web Developer", "Welder", "Wood Carver",
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
        
    end
  
end