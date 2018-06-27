class GeneratorsController < ApplicationController
  def show
  end

  def ipsum
    capital_words = [
      "2nd Amendment", "Alabama", "America", "Bama", "Boss 302", "Boy Scouts", "Cajun", "Carhartt", "Chevy", 
      "Copenhagen", "Elvis", "Graceland", "Harley-Davidson", "Jack Daniels", "Jeep", "Kentucky", "Kid Rock", "Marlboro", 
      "Mississippi", "Mustang", "NASCAR", "Nashville", "Reba", "Skoal", "Tennessee", 
      "Travis Tritt", "VFW"
      ]
    words = [ 
      "4-wheeler", "18-wheeler", "afterburner", "alligator", "amen", "ammo", "ammunition",
      "angler", "antelope", "antlers", "ape drape", "Appalachian", "AR-15", "Arkansas", "army", "ATV", 
      "backhoe", "backwoods", "bacon", "baptist", "baseball", "bait", "banjo", "barbecue", "barb wire", "bayou", 
      "beer", "beer pong", "belt buckle", "big-block", "bless her heart", "bluegrass", "bolo tie", "bolt action",
      "bonfire", "boot camp", "boots", "booze", "bourbon", "bow hunting", "brambles", "breech-loaded",
      "britches", "bronco", "buck",
      "buckskin", "Budweiser", "bull", "bull horns", "bullets", "bumpkin", "burgers", "burn rubber", "butter", "by God", 
      "cactus", "caliber", "Camaro", "camo", "camouflage", "camper", "camping", "carburetor", 
      "Carolina", "cartridge", "castrate", "catfish",
      "cattle", "CB radio", "center mass", "chainsaw", "chamber", "chaps", "Charlotte", "chew", "chickens", "chiggers",
      "chili", "Christian", "chuckwagon", "chum", "church",
      "clodhopper", "clutch", "coal mine", "cockroaches", "Coke", "cole slaw", "collard greens", "community college", "confederate", 
      "conniption", "conservative", "Constitution",
      "coon", "Coors", "copperhead", "cornbread", "corral", "Corvette", "cotton", "cottonmouth", "country", "cow", 
      "cowboy", "cracker", "crawdad", "creek", "Creole", "cross", "cud", "Cuda",
      "daddy", "dang", "darn", "deer", "deet", "deliverance", "dentures", "deputy", "dern", "diamonback", 
      "diddly squat", "diesel", "dip", "dirt road", "Dale Earnhardt",
      "dirt bikes", "Dixie", "dog", "double-barrel", "double wide", "Dr Pepper", "dually truck", "duck huntin",
      "dump truck", "dune buggy", "eagle", "elbow grease", "elk", "estrus", 
      "farm", "fence", "fiddle", "Firebird", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", "fixin", "fixin", "flag", "flatbed",
      "Florida", "folks", "football", "Ford", "foreman", "Fox News", "fried chicken", "frog", "front porch", "full metal jacket",
      "gambler", "gander", "garden", "gasoline", "gator", "gelding", "George Strait", "Georgia", "gizzard", "glasspack", "Glock", 
      "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grits", "grizzly", "GTO Judge", "gumbo", "guns", 
      "gussied up", "gut",
      "ham radio", "hard hat", "hay", "heaven", "hell", "Hemi", "henhouse", "herd", "hick", "hillbilly", "hissy fit", "hogs", 
      "holler", "holster", "honky", "honky-tonk", "hood scoop", "hornet", "horse", 
      "horseshoe", "horsepower", "hotdog", "hotrod", "hound dog", "huntin", "hushpuppy", "hymnal", 
      "inbred", "iron sights",
      "jackrabbit", "jackknife", "jaw", "jambalaya", "Jesus", "job site", "John Deere", "John Wayne", "juggalo", "jukebox",
      "keg", "kerosine", "ketchup", "kin", "kinfolk", "knee-high", "knife", "knuckle",
      "lever action", "lift kit", "lightning bugs", "Louisiana", "LSU", "Lucky Strikes", "lug nuts", "lunchbox", "lures", 
      "mag", "magazine", "magnum", "mama", "mare", "Marine Corps", "mayonnaise", "McRib", "Memphis", "Michelob", 
      "molasses", "moonshine", "mosquito",
      "Mtn Dew", "muddin", "muffler", "mullet", "muscle car", "National Anthem", "naw", "noodlin", "NRA",
      "oak tree", "oil change", "Oklahoma", "okra", "Old Glory", "ornery", "outhouse", "overalls", "oxy", "Ozarks",
      "pace car", "pardner", "passel", "pepper", "Pepsi", "pew", "pickup", "piddly", "pit crew", "plantation", "plumb", "polecat", 
      "pony", "ponycar", "pork chops", "possum", "post-hole digger",  
      "potato salad", "preacher", "prepper", "primer", "propane", "pump action",
      "quarterback", "quarter mile", "quicksand", 
      "racecar", "ragamuffin", "rager", "ranch", "rascal", "rattler", "Reagan", "rebel", 
      "reckon", "recollection", "redneck", "red white and blue", "reel", "reload", "Remington",
      "republican", "restrictor plate", "reverend", "revival", "revolver", "rifle", "rimfire", 
      "riverboat", "rockin chair", "rod", "rodeo", "roll tide",
      "rooster", "roustabout", "Ruger", "rural", "rut", 
      "saddle", "sammich", "sausage", "savannah", "scope", "scrambled eggs", "sermon", "shaker", "sheriff", 
      "shifter", "shotgun", "shootin", "sideburns", "silencer", "sinker", 
      "sinner", "six pack",
      "skedaddle", "skeeter", "Skoal", "slaughter", "slingshot", "slop", "small-block", "Smith & Wesson", "smoked", "smoothbore", 
      "snapping turtle", "Southern",
      "sow", "spark plug", "spitter", "spoiler", "spurs", "station wagon", "steak", "steel-toed", "steer",
      "Stetson", "succotash", "supercharged", "supper", "swamp", "sweet tea", 
      "Tabasco", "tackle", "tackle box", "tadpole", "tarnation", "tater", "Texas", "these parts", "throttle", "t-top", "ticks",
      "torque", "tractor", "tradition", 
      "trailer", "train", "Trans-Am", "transmission", "trigger", "trolling", "tuckered", "turkey", "turnip greens",
      "uncle", "USA", "values", "varmint", "veterans", "Virginia",
      "waders", "wadn't", "wagon", "wagonwheel", "welder", "western", "West Virginia", "whiskey", "white lightning", "white trash", "whittle", 
      "Winchester", "work",
      "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha", 
      "Z-28"]
      
    capital_words2 = [
      "Abraxo", "Bethesda", "Boston Bugle", "Brotherhood of Steel", "Butch", "Caesar's Legion", "Children of Atom", "Dave", 
      "Diamond City", "Dukov", "Enclave",
      "Fawkes", "Gary", "Gwinnett", "Lone Wanderer", "Megaton", "Minutemen", "Mr. Handy", "Mysterious Stranger", "New Vegas", 
      "Novak", "Nuka-Cola", "Primm", "Regulators", "Sugar Bombs", "Talon Company", "The Institute", "Three Dog",
      "Tunnel Snakes", "Van Buren", "Vault 101", "Vault-TEC"
      ]
      
    words2 = [
      "agility", "alarm clock", "alcohol", "alien blaster", "assault rifle", "barter", "baseball bat", "baseball glove", "beer", 
      "behemoth", 
      "big guns", 
      "bloat fly", "bloodbug", "blood pack", 
      "bobblehead", "bobby pin", "bonesaw", "brahmin", "bubblegum", 
      "buffout", "camera", "caravan", "centaur", "charisma", "chems", "coffee mug", "conductor", "courser chip", "cram", 
      "crimson", 
      "crispy squirrel bits", "crutch", "cue ball", "dandy boy apples", "dart", 
      "deathclaw", "dirty ashtray", "dog meat", "duct tape", "dynamite", "earnings clipboard", "endurance", "energy weapon", 
      "explosives", "fancy lads snack cakes", "fast travel", "fat man", "femur", "feral ghoul", 
      "firehose nozzle", "fission battery", "flamer", 
      "fragmentation grenade", "gecko",
      "ghoul", "glowing one", "gore bag", "gum drops", "gunners", "hacking", "haptic drive", 
      "harmonica", "hockey mask", "holotape", "hot plate", 
      "Hubris Comics", 
      "hunting rifle", "iguana bits", 
      "instamash", 
      "intelligence", "jet", "leather armor", "Lincoln Repeater", 
      "lockpick", "luck", "lunchbox", "mantis", "med-x", 
      "medicine", "melee", "mentats", "mercenary", "mesmetron", "metro ticket", "minigun", "mini nuke", 
      "mirelurk", 
      "missile", "Mojave Express", 
      "molerat", "molotov cocktail", "mongrel", "motorcycle handbrake", "mutilated organs", 
      "NCR", "nightkin", 
      "noodles", "oil canister", "overdue book", "Overseer", "paint gun", "paladain", "paperweight", 
      "perception", "pickpocket", "Pip-Boy 3000", "plasma rifle", "pork'n'beans", "Poseidon Energy", "potato crisps", 
      "power armor", "power core", 
      "power fist", 
      "pre-war money", "psycho", "punga fruit", 
      "quantum", "rad-x" "radaway", "radiation suit", "radroach", "radscorpion", "radstag", "raider", "Railroad", "railway spikes", 
      "rangers",  
      "repair", "ripper", "Rivet City", "rocket launcher", "safe", "salisbury steak", "scalpel", "scavenger", "science", 
      "scorched book", 
      "scrap metal", "scribe", "sentry bot", "shishkebab", 
      "shiv", "shotgun", "slavers", "small guns", 
      "sneak", "snow globe", "speech", 
      "squirrel on a stick", "steal", "stealth boy", "steam gauge assembly", 
      "stimpak", "stingwing", "strength", "subway token", "sugar bombs", "supermutant", "super sledge", "surgical tubing", "switchblade", "synth", "technical document", "Tenpenny", "toolbox", "toy car", "turpentine", "unarmed", 
      "vault jumpsuit", 
      "vodka", "wait", "wasteland", "well rested", "whiskey", "wonderglue", "wrench", 
      "xander root", "yao guai", 
      "yum yum deviled eggs"
      ]
      
    capital_words3 = [
      "Canyon", "Peak"
      ]
      
    words3 = [
      "arroyo", "basin", "bay", "bayou", "brook", "bush", "chaparral", "culvert", "draw", "eddy", "fjord", "forest", "garden", 
      "glacier", "glade", "glen", "gully", "lagoon",
      "mesquite", "mountain", "mouth", "plains", "range", "river", "savannah",
      "shade tree", "spur", "swamp", "tundra", 
      "underbrush", "undergrowth", "waddy", "weeds"
      ]

    ran_capital1 = capital_words.sample
    ran_capital2 = capital_words.sample
    ran_capital3 = capital_words.sample
    
    sentence_len1 = rand(5...20)
    ran_words1 = words.sample(sentence_len1).map(&:inspect).join(' ')
    sentence_len2 = rand(5...20)
    ran_words2 = words.sample(sentence_len2).map(&:inspect).join(' ')
    sentence_len3 = rand(5...20)
    ran_words3 = words.sample(sentence_len3).map(&:inspect).join(' ')
    
    @ipsum1 = ran_capital1 + " " + ran_words1.delete('"') + ". " + ran_capital2 + " " + ran_words2.delete('"') + ". " + ran_capital3 + " " + ran_words3.delete('"') + "."
    
    fallout_caps1 = capital_words2.sample
    fallout_caps2 = capital_words2.sample
    fallout_caps3 = capital_words2.sample
    
    sentence2_len1 = rand(5...20)
    fallout1 = words2.sample(sentence2_len1).map(&:inspect).join(' ')
    sentence2_len2 = rand(5...20)
    fallout2 = words2.sample(sentence2_len2).map(&:inspect).join(' ')
    sentence2_len3 = rand(5...20)
    fallout3 = words2.sample(sentence2_len3).map(&:inspect).join(' ')
    
    @ipsum2 = fallout_caps1 + " " + fallout1.delete('"') + ". " + fallout_caps2 + " " + fallout2.delete('"') + ". " + fallout_caps3 + " " + fallout3.delete('"') + "."
    
    naturecaps1 = capital_words3.sample
    naturecaps2 = capital_words3.sample
    naturecaps3 = capital_words3.sample
    
    sentence3_len1 = rand(5...20)
    nature1 = words3.sample(sentence3_len1).map(&:inspect).join(' ')
    sentence3_len2 = rand(5...20)
    nature2 = words3.sample(sentence3_len2).map(&:inspect).join(' ')
    sentence3_len3 = rand(5...20)
    nature3 = words3.sample(sentence3_len3).map(&:inspect).join(' ')
    
    @ipsum3 = naturecaps1 + " " + nature1.delete('"') + ". " + naturecaps2 + " " + nature2.delete('"') + ". " + naturecaps3 + " " + nature3.delete('"') + "."  
  
  end
end