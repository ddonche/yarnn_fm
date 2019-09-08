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
            "Watching Movies", "Watercolor Painting", "Web Design", "Welding", "Woodworking", "Wrestling", "Writing",
            "Yoga", "Youtubing",
          ]
        
        hobby1 = hobby_words.sample
        hobby2 = hobby_words.sample
        hobby3 = hobby_words.sample
        
        @hobbies_ipsum = hobby1 + ", " + hobby2 + ", " + hobby3
    end
  
end