module Modern
    extend ActiveSupport::Concern
    
    def modern
        capital_words = [
          "2nd Amendment", "Alabama", "America", "Backwoods", "Bama", "Baptized",
          "Bless your heart", "Boss 302", "Boy Scouts", 
          "Burn rubber", "Cajun", "Carhartt", "Chevy", "Chrome",
          "Copenhagen", "Country music", "Crawdads", "Day labor", "Dirt bikes", "Dolly Parton", "Drill Sergeant", 
          "Double-wide trailer", "Elvis", "Fire ants",
          "Firecracker", "Florida Man", "Fried chicken",
          "Gag a maggot", "Gizzard", "Graceland", "Grits", "Harley-Davidson", 
          "Hell's Half Acre", 
          "Honky-tonk", "Jack Daniels", "Jeep", "Job site", "July 4th", 
          "Junkyard", "Kentucky", "Kid Rock", 
          "Lightning bugs", "Marlboro", 
          "Mississippi", "Mustang", "NASCAR", "Nashville", "Oil change", "Pickup truck", 
          "Pitched a hissy fit", "Pit crew", "Polecat", "Pork chops",
          "Propane", "Pump action", "Reba", "Revival", "Rodeo", "Six pack", "Skoal", "Southern", "Tennessee", 
          "Travis Tritt", "Turkey", "VFW"
          ]
        words = [ 
          "4-wheeler", "5-speed", "18-wheeler", "afterburner", "alligator", "amen", "ammo", "ammunition",
          "angler", "antelope", "antlers", "ape drape", "Appalachian", "AR-15", "Arkansas", "army", 
          "ass-whoopin", "ATV", 
          "backhoe", "bacon", "baptist", "baseball", "bait", "banjo", "barbecue", "barb wire", 
          "barkin up the wrong tree", "bayou", 
          "beer", "beer pong", "belt buckle", "big-block", "bluegrass", "bolo tie", "bolt action",
          "bonfire", "boot camp", "boots", "booze", "bourbon", "bow hunting", "brambles", "breech-loaded",
          "britches", "bronco", "Bubba", "buck",
          "buckskin", "Budweiser", "bull", "bull horns", "bullets", "bumpkin", "burgers", "Busch", "butch", 
          "butter", "by God", 
          "cactus", "caliber", "Camaro", "camo", "camouflage", "camper", "camping", "carburetor", "catalytic converter",
          "Carolina", "cartridge", "castrate", "catfish",
          "cattle", "CB radio", "center mass", "chainsaw", "chamber", "chaps", "Charlotte", "chew", "chickens", "chiggers",
          "chili", "Christian", "chuckwagon", "chum", "church",
          "clodhopper", "clutch", "CMT", "coal mine", "cockroaches", "Coke", "cole slaw", "collard greens", "community college", "confederate", 
          "conniption", "conservative", "Constitution",
          "coon", "Coors", "copperhead", "cornbread", "corral", "Corvette", "cotton", "cottonmouth", "country", "cow", 
          "cowboy", "cracker", "crackhead", "creek", "Creole", "cross", "cud", "Cuda",
          "daddy", "dang", "darn", "deer", "deet", "deliverance", "dentures", "deputy", "dern", "diamondback", 
          "diddly squat", "diesel", "dip", "dirt road", "dirty", "Dale Earnhardt",
          "Dixie", "doesn't know his ass from a hole in the ground",
          "dog", 
          "don't know shit from shinola", "don't mess with Texas", 
          "double-barrel", "Dr Pepper", "dually truck", "duck huntin", "Dukes of Hazzard",
          "dump truck", "dune buggy", "eagle", "elbow grease", "elk", "estrus", 
          "farm", "fence", "fiddle", "Firebird", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", "fixin", "flag", "flatbed",
          "folks", "football", "Ford", "foreman", "Fox News", "frog", "front porch", "full metal jacket",
          "gambler", "gander", "garden", "gasoline", "gator", "gelding", "George Strait", "Georgia", 
          "gets my goose", "git", "glasspack", "Glock", 
          "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grizzly", "GTO Judge", "gumbo", "guns", 
          "gussied up", "gut",
          "ham radio", "hard hat", "hay", "hay bales", "heaven", "heifer", "hell", "Hemi", "henhouse", "herd", "hick", "hillbilly", 
          "hissy fit", "hogs", 
          "holler", "Hollywood", "holster", "honky", "hood scoop", "hornet", "horse", 
          "horseshoe", "horsepower", "hotdog", "hotrod", "hound dog", "huntin", "hushpuppy", "hymnal", 
          "inbred", "iron sights",
          "jackrabbit", "jackknife", "jaw", "jambalaya", "Jesus", "Jesus H. Christ", "John Deere", 
          "John Wayne", "juggalo", "jukebox",
          "KC HiLites", "keg", "kerosine", "ketchup", "kibble", "kin", "kinfolk", "knee-high", "knife", "knuckle",
          "lever action", "lift kit",  
          "like a chicken with its head cut off", "long haul", "Louisiana", "LSU", "Lucky Strikes", "lug nuts", "lunchbox", "lures", 
          "mag", "MAGA", "magazine", "magnum", "mama", "mare", "Marine Corps", "mayonnaise", "McRib", "Memphis", "meth", "Michelob", 
          "molasses", "moonshine", "mosquito",
          "Mtn Dew", "muddin", "muffler", "mullet", "muscle car", "National Anthem", "naw", "nit-pickin", "noodlin", "NRA",
          "oak tree", "Oklahoma", "okra", "Old Glory", "opiates", "ornery", "outhouse", "overalls", "oxy", "Ozarks",
          "pace car", "pardner", "passel", "pepper", "Pepsi", "pew", 
          "a pig in shit", "pig's feet", "piddly", "plantation", "plumb", 
          "pony", "ponycar", "poor as a church mouse", "possum", "post-hole digger",  
          "potato salad", "preacher", "prepper", "primer",
          "quarterback", "quarter mile", "quicksand", 
          "RC cola", "racecar", "ragamuffin", "rager", "ranch", "rascal", "rattler", "Reagan", "rebel", 
          "reckon", "recollection", "redneck", "red white and blue", "reel", "reload", "Remington",
          "republican", "restrictor plate", "reverend", "revolver", "rifle", "rimfire", 
          "riverboat", "rockin chair", "rod", "roll tide",
          "rooster", "roustabout", "Ruger", "rural", "rut", 
          "saddle", "sammich", "sausage", "savannah", "scope", "scrambled eggs", "scripture", "sermon", "shaker", "sheriff", 
          "shifter", "shotgun", "shootin", "sideburns", "silencer", "sinker", 
          "sinner",
          "skedaddle", "skeeter", "Skoal", "slaughter", "slingshot", "slop bucket", "small-block", "Smith & Wesson", "smoked", 
          "Smokey and the Bandit", "smoothbore", 
          "snapping turtle",
          "sow", "spark plug", "spitoon", "spitter", "spoiler", "spray paint", "spurs", "station wagon", "steak", "steel-toed", "steer",
          "Stetson", "succotash", "sumbitch", "supercharged", "supper", "swamp", "swather", "sweet tea", 
          "Tabasco", "tackle", "tackle box", "tadpole", "tarnation", "tater", "Texas", "these parts", "throttle", "t-top", "ticks",
          "torque", "tractor", "tradition", 
          "trailer", "train", "Trans-Am", "transmission", "trigger", "trolling", "trucker", "Trump", "tuckered", "turnip greens", 
          "tweaker", "twine",
          "uncle", "USA", "values", "varmint", "veterans", "Virginia",
          "waders", "wadn't", "wagon", "wagonwheel", "welder", "western", "West Virginia", "whiskey", "white lightning", "white trash", "whittle", 
          "Winchester", "Winston", "work", "wrastlin",
          "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha",  
          "Z-28"
        ]
          
        ran_capital1 = capital_words.sample
        ran_capital2 = capital_words.sample
        ran_capital3 = capital_words.sample
        ran_capital4 = capital_words.sample
        ran_capital5 = capital_words.sample
        
        sentence_len1 = rand(5...30)
        ran_words1 = words.sample(sentence_len1).map(&:inspect).join(' ')
        sentence_len2 = rand(5...30)
        ran_words2 = words.sample(sentence_len2).map(&:inspect).join(' ')
        sentence_len3 = rand(5...30)
        ran_words3 = words.sample(sentence_len3).map(&:inspect).join(' ')
        sentence_len4 = rand(5...30)
        ran_words4 = words.sample(sentence_len4).map(&:inspect).join(' ')
        sentence_len5 = rand(5...30)
        ran_words5 = words.sample(sentence_len5).map(&:inspect).join(' ')
        
        @merican_ipsum = ran_capital1 + " " + ran_words1.delete('"') + ". " + ran_capital2 + " " + ran_words2.delete('"') + ". " + ran_capital3 + " " + ran_words3.delete('"') + ". " + ran_capital4 + " " + ran_words4.delete('"') + ". " + ran_capital5 + " " + ran_words5.delete('"') + "."
        
    end
  
end