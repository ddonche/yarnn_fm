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
      "Adventure", "Alchemist", "Castle", "Cleric", "Cloak", "Dragon", 
      "Duke", "Dwarf", "Elf", "Enchantress", "Guild", "Halfling", 
      "Jester", "King", "Knight", 
      "Lord", "Lore", "Mage", "Magic", "Mythical", "Paladin", 
      "Queen", "Rune", "Scepter", "Sorcery", "Spell", "Sword", "Void", "Wizard", "Wraith"
      ]
      
    words2 = [
      "acolyte", "accursed", "acrobat", "Admiral", "aegis", "aeronaut", "aether", "ale", "alloy", "altar", "ambassador", "amulet", 
      "ancestral", "angel", "ankh", "anvil", "apocalypse", "arcane", 
      "archangel", "archive", "aristocracy", "armaments", "armor", "arrow", "artesan", "artifact", "artifice",
      "assassin", "astral", "augur", "aura", "automaton", "avatar", "axe", "baker", "bandage", "bandit", "banner",
      "barbarian", "bard", "baron", "baroness", "barricade", "barrow", "battering ram", 
      "battle", "battlefield", "battlements", "bazaar", "beast", 
      "beefeater", "beer", "beguile", "behemoth", "berkserker", "bishop", "blacksmith", "blasphemy", "blessing", "bloodletter", 
      "blood sausage", "bone setter", "book",
      "boots", "bounty hunter", "bow", "brawler", "breastplate", "brew", "brigand", "bronze", "brood", "brothel", "buckler", 
      "caltrips", "camp", "campfire", "candle", 
      "cannibals", "cape",
      "Captain", "captive", 
      "cardinal", "cards", "cart", "cataclysm",
      "catacombs", "catapult", "cattle", "cauldron", "causeway", "cavalier", "celestial", "ceremony",
      "chain mail", "chamber pot", "champion", "channeler", "chaos", "charm", "chickens", "chieftain", 
      "chimera", "chisel", "chivalry", "clan", 
      "Chosen One", "clairvoyant",
      "club", "cog", "Colonel", "compass", "conjurer", 
      "consecration", "constable", "contraption", "copper", "corridore", "corsair", "cot", "cottage", "count", "countess", 
      "court", "courtesan", "courtier", 
      "coven", "cowl", "creature", "crest",
      "crone", "crossbow", "crown", "crucible", "crusade", "crystal", "curse", "cutthroat", "cyclops", "daemon", "dagger", 
      "damsel", "dancer", "deity", "demigod", "demon", "den", "desecration", "devil", "dice", "diplomacy", "diplomat", "disguise", 
      "divine", "diviner", "dowager", "dowery",
      "dragoon", "drawbridge", "dreadnought", "druid", 
      "drummer", "dryad",
      "duchess", "duel", "dungeon", "eggs", "elemental", "empath", "Emperor", "Empress", "enchantment", 
      "engineer", "entrails", 
      "envoy", "escort", "espionage", "ethereal", "evil", 
      "evocation", "exalted", "executioner", 
      "exorcism", "faery", "falconer", 
      "familiar", "feather", "fencing", "festival", "fey", "fighter", "fire", "fisherman", "fishmonger", "fishwife", "flag", 
      "flail", "fleet", "fletcher", "flint", "flog", "flute", "forge", "fortifications", "fortress", "fortune teller", "foundry",
      "friar", "gaelor", "galleon", "gambler", "gargoyle", "gates", "gateway", "gauntlet", "gear", "General", "ghost", "ghoul", "giant", "glaive", "glass", "glory", "glyph", 
      "gnome", "goat's milk",
      "goblet", "goblin", "gods", "goddess",
      "golom", "gorgon", "grail", "gravedigger", "grave robber", "grieves", "griffon", "guard", "guest",
      "hag", "halberd", "hamlet", "hammer", "hangman", "harbinger", "harp", "harvester", "hatchling", 
      "healer", "heir", "helm", "herald", "herbalist", "heresy", "hermit", "hero", "heroic", "hexer",
      "highwayman", "hogs", "honor", "horn", "horse", "hound", "hourglass", "hubris",
      "huntsman", "hut", "illusionist", "imp", "ink", "inn", "inquisitor", "invisibility", "iron", "joust",
      "key", "knife", "lady", 
      "lair", "lamp", "lance", 
      "leather", "legend", "levitate", "Lieutenant", "lich", "linament", "lodestar", "longbow", "loot", "lumberjack", 
      "lurker", "lute", "lyre", 
      "mace", "magician", "magistrate", "magus",
      "maiden", "mainsail", "map", "marionette", "market", "marksman", "martyr", "mask", "mausoleum", "mead", "medic", 
      "medicine", "mercenary", "merchant", 
      "merrymaking", "milkmaid", "mime", "minotaur", 
      "minstrel", "mirror", "mirth", "mist", "moat", "monarch", "monk", "mysterious", 
      "necromancer", "nephilim", "nightmare", "noble", "nock", "nomad", "noose", "nun", "nunnery", "nymph", 
      "oarsman", "obsidian", "occultist", 
      "ogre", "ointment", 
      "oracle", "orc", "parapet", 
      "peasant", "petticoat", "phantom", "pike", "piper", "pirate", "plague", "plane", "plate mail",
      "poison", "pork", "portal", "priest", "priestess", "prince", "princess", "prison", "prophesy", 
      "protection", "puppeteer", "pyre", "pyromancer", "quest", "quill", "quiver", "raider", "rapier", "ranger", "raven", "regent",
      "religion", "resurrection", "ring", "rite", "ritual", "road", "robber", "robes", "roc", 
      "rogue", "royal", "saber", "sack", "sacrifice", "sage", 
      "sailor", "salvage", "salve", "sarcophagus", "satyr", "savage", "savant", "scavenger", "scimitar", "scion", 
      "scout", "scribe", "scroll", 
      "scrying", "seance", "secret passageway", "seer",
      "sentry", "serf", "sextant", "shade", "shadow",
      "shaman", "shapeshifter", "sheep", "shepherd", "shield", 
      "shieldmaiden", "ship", "shrine", "shroud", "siege", "sigil", "silk", "sir", "siren", "skeleton", "skirmish", 
      "skyship", "slavery", "smith", "smuggler", "soldier", "soothsayer", 
      "sorcerer", "sow", "spear", "spectral", "spellbook",
      "spellcaster", "spirit", "spy", "spyglass", "squire", "stable", "staff", "statue", "steel", 
      "storyteller", "stowaway", "studded leather", "summoner", "swashbuckler", "swine", "tablet", "tanner", 
      "tavern", "tax collector", "teleportation", "thief", "throne", "tinder", "tinkerer", "tomb", "tome", "torch", 
      "torture chamber", "totem", 
      "tournament", "tower", "trade",
      "transmutation", "trap", "trap door", "traveler", "trebuchet", "treason", "treasure", "tribe", "troll", "trumpets", 
      "tumbler", "turnkey", "tyranny", "undead", "undertaker", "urn", 
      "valient", "Valkyrie", "vengeance", 
      "venom", "vestments", "vial", "vicar", "vigilant", "vigor", "village", "vision",
      "wagon", "ward", "wares", "warhammer", "warlock", "warlord", "warrior", "watchman", "weaver", "wedding", "whip", "wight", "winch", "wine", 
      "wine skin", "witch", "wool"
      ]
      
    capital_words3 = [
      "Alpine", "Basin", "Bay", "Canyon", "Desert", "Forest", "Gulf", "Hill", "Island", "Jungle", 
      "Lake", "Marsh", "Meadow", "Mountain", "Ocean", "Peak", 
      "Plains", "Pond", "Ridge", "River", "Sea", "Swamp",
      "Tundra"
      ]
      
    words3 = [
      "acclivity", "afternoon", "algae", "alp", "apex", "aquafer", "arroyo", "ascent", "avalanche", "bank", "bark", "barrens", "bayou", "beach", 
      "bedrock", "blizzard", "blossom", "bluff", 
      "bog", "boscage", "bottoms", "boulder", 
      "bracken", "brake", "brambles", "branch", "break",
      "breeze", "bridge", "brook", "brow", "brush", "bud", "bush", "butte", "cave",
      "chaparral", "chill", "chinook", "cliff", "climb", "cloudburst", "clouds", "clover", "cluster", "cobblestone", "cocoon", "conifer", "continent", "cope", 
      "coppice", "copse", "coral", 
      "crag", "crest", "crevasse", "crevice", "crust", "culvert", "current", 
      "cyclone", "dawn", "deluge", "depression", "dew", "dirt", "dome",
      "downpour", 
      "drain", "draw", "driftwood", 
      "drizzle", "droplet", "dune", "dust devil", "earth", "earthquake", "eclipse",
      "eddy", "elevation", "eminence", "eruption", "esker", "estuary", "evening", "eventide", "everglade", "evergreen", "fauna", "fell", "fen", "fern", 
      "fjord", "flakes", "flock", "flood", 
      "flora", "floret", "flower", "floweret", "flurry", "fog", "frost", "fruit", "gale",
      "garden", 
      "glacier", "glade", "glen", "gloaming", "gradient", "gravel", "grit", "grove", "gully", "gust", "hail", 
      "half-light", "hardwood", "haze", "headland", "heap", 
      "heat", "heath",
      "height", "herb", "herd", "highland", "hillock", "hilltop", "hinterland", "hive", "hole", "hollow", "hummock", "hurricane",
      "ice", "icycle", "inclination", "incline", "inlet", "isle",
      "knoll", "lagoon", "land", "landslide", "lava", "lea", "leaves", "lightning", "loch", "lodge", "lowland", "marshlands", "maze", "mesa",
      "mesquite", "metal", "mire", "mist", "mistral", "monsoon", "moon", "moonlight", "moors", "morass", "morning", "moss", 
      "mound", "mouth", "mud", "mudslide", 
      "mushrooms", "nettles", "night", "nightfall", "oak", 
      "oasis", "ore",
      "outback", "overgrowth", "overhang", "palisade", "pasture", "peat", "pebble", "peninsula", "perennials",
      "permafrost", "pike", "pine cone", "pines", "pit",
      "plant", "point", "posy", "precipice", "precipitation", "prominence", "promontory", "protuberance", "pulp",
      "quag", "quagmire", "quake", "quarry", "quicksand", "rain", "rainfall",
      "range", "rays",
      "reef", "rise", "riverbed", "rivulet", 
      "rock", "rock face", "rockslide", "roof", "rubble", "sahara", "sand", "sapling", "savannah", "scarp", 
      "sediment", "seedling", "seeds",
      "shade tree", "sheer", "shelf", "shoot", "shower", "shrubbery", "sierra", "skree", "slab", "slag", "sleet", "slope", "slough", "slush", "snow", 
      "snowdrift", "spate", "spike", "spray", "spring", "sprinkle", "spur", 
      "squall", "stack", "starlight", "stars", "steppe", "storm", "stump", "summer", "summit", "sump", "sun", "sundown", 
      "sunrise", "surf", "swelter", "talus", "tangle", "tempest",
      "thicket", "thorn", 
      "thunder",
      "thunderclap", "tide", "timber", "tip", "topiary", "tor",
      "tornado", "torrent", "trees", "tremor", "tropical", "twilight", "twister", 
      "typhoon", "underbrush", "undercurrent", "undergrowth", "undertow", "upland", "vegetation", "veldt", "vertex", "vine", 
      "volcano", "waddy", "wash", "wasteland",
      "water", "waves", "weald", "web", "weeds", "wetlands", "whirlwind", "wind", "windstorm", "winter", "woodland", "woods"
      ]

    ran_capital1 = capital_words.sample
    ran_capital2 = capital_words.sample
    ran_capital3 = capital_words.sample
    
    sentence_len1 = rand(5...30)
    ran_words1 = words.sample(sentence_len1).map(&:inspect).join(' ')
    sentence_len2 = rand(5...30)
    ran_words2 = words.sample(sentence_len2).map(&:inspect).join(' ')
    sentence_len3 = rand(5...30)
    ran_words3 = words.sample(sentence_len3).map(&:inspect).join(' ')
    
    @ipsum1 = ran_capital1 + " " + ran_words1.delete('"') + ". " + ran_capital2 + " " + ran_words2.delete('"') + ". " + ran_capital3 + " " + ran_words3.delete('"') + "."
    
    fantasy_caps1 = capital_words2.sample
    fantasy_caps2 = capital_words2.sample
    fantasy_caps3 = capital_words2.sample
    
    sentence2_len1 = rand(5...30)
    fantasy1 = words2.sample(sentence2_len1).map(&:inspect).join(' ')
    sentence2_len2 = rand(5...30)
    fantasy2 = words2.sample(sentence2_len2).map(&:inspect).join(' ')
    sentence2_len3 = rand(5...30)
    fantasy3 = words2.sample(sentence2_len3).map(&:inspect).join(' ')
    
    @ipsum2 = fantasy_caps1 + " " + fantasy1.delete('"') + ". " + fantasy_caps2 + " " + fantasy2.delete('"') + ". " + fantasy_caps3 + " " + fantasy3.delete('"') + "."
    
    naturecaps1 = capital_words3.sample
    naturecaps2 = capital_words3.sample
    naturecaps3 = capital_words3.sample
    
    sentence3_len1 = rand(5...30)
    nature1 = words3.sample(sentence3_len1).map(&:inspect).join(' ')
    sentence3_len2 = rand(5...30)
    nature2 = words3.sample(sentence3_len2).map(&:inspect).join(' ')
    sentence3_len3 = rand(5...30)
    nature3 = words3.sample(sentence3_len3).map(&:inspect).join(' ')
    
    @ipsum3 = naturecaps1 + " " + nature1.delete('"') + ". " + naturecaps2 + " " + nature2.delete('"') + ". " + naturecaps3 + " " + nature3.delete('"') + "."  
  
  end
  
  def names
    male_first_names = [
      "A.", "Abe", "Abraham", "Adam", "Adonis", "Aidan", "Al", "Albert", "Allen", "Alex", "Andrew", "Andy", 
      "Anson", "Anthony", "Antonio", 
      "Apollo", "Archer", "Archibald", "Archie", "Art", "Arthur", "August", "Augustus", "Austin",
      "B.", "Bart", "Bartholomew", "Barry", "Beau", "Ben", "Benjamin", "Benji", "Benson", "Bert", "Bill", "Billy", "Bishop", 
      "Blake", "Bo", "Bob", "Bobby", "Bohdy", "Brad", "Bradley", "Bradon", "Brady",
      "Bran", "Brandon", "Bret", "Brian", "Brock", "Broderick", "Brody", 
      "Bruce", "Bryan", "Bryce", "Butch",
      "C.", "Carl", "Cecil", "Chance", "Charles", "Chase", "Chuck", "Claude", "Clive", "Connor", "Cooper", "Cord", "Cordell", 
      "Cornelius", 
      "Cory", "Curt", "Curtis",
      "D.", "Dallas", "Damien", "Damon", "Daniel", "Darren", "Darrel", "Dave", "David", "Davis", "Dax", 
      "Delbert", "Dennis", "Desmond", "Dixon", 
      "Drew",
      "E.", "Earl", "Ed", "Eddie", "Edgar", "Eduardo", "Edward", "Elias", "Elmer", "Elvis", "Ender", "Ennis", 
      "Ernie", "Ernest", "Ernesto", "Eugene", "Evan",
      "Ezekiel", "Ezra",
      "F.", "Fabio", "Favian", "Felipe", "Fernando", "Frank", "Franklin", "Fred", "Freddy",
      "G.", "Gabe", "Gabriel", "Garrett", "Gary", "Gavin", "Gene", "George", "Gerald", "Geraldo", "Glen", "Gordon", "Grant", "Greg", "Grover",
      "H.", "Hal", "Hank", "Harlon", "Harrison", "Harvey", "Hawk", "Henry", "Higgins", "Holden", "Hubert", "Hugh", "Hugo", "Hunter",
      "I.", "Ian", "Iggy", "Irving", "Iver", 
      "J.", "Jace", "Jack", "Jackson", "Jacob", "Jaden", "Jake", "James", "Jared", "Jason", "Jasper", "Jean-Claude", "Jeremiah", "Jeremy", 
      "Jerry", "Jesus", "Jim", "Jimmy", "Johan", 
      "John", "Johnny", "Jordan", "Jorge", "Julian", "Julio", "Julius", "July",
      "Justice", "Justin",
      "K.", "Kai", "Keihl", "Keith", "Kell", "Keller", "Ken", "Kenneth", "Kenny", "Kurt", "Kyle", 
      "L.", "Lance", "Larry", "Lawrence", "Lee", "Leo", "Leonard", "Leonardo", "Levi", "Liam", "Lionel", "Logan", "Lonn", "Lorin", "Lucas", 
      "Luke", "Luther", "Lyle",
      "M.", "Marcus", "Mark", "Martin", "Marty", "Matt", "Matthew", "Max", "Maximilian", "Michael", "Mick", "Micky", 
      "Mitch", "Mitchell", "Mitt", "Mohammad", 
      "Morgan", "Muhammad",
      "N.", "Nate", "Nathan", "Nicholas", "Nick", "Noel",
      "O.", "Odin", "Olaf", "Oliver", "Orion", "Orville", "Oscar", "Owen",
      "P.", "Paddy", "Paul", "Perry", "Peter", "Phil", "Phillip", "Phineas", "Potter", "Prince",
      "Q.", "Quan", "Quincy", "Quin", "Quinn", 
      "R.", "Rafe", "Raphael", "Ray", "Rayburn", "Raylon", "Raymond", "Reg", "Reggie", "Reginald", "Rich", "Richard", 
      "Richie", "Rip", "River", 
      "Rob", "Robbie", "Robert", "Rod", "Roderick", 
      "Rodrigo", "Roger", "Roland", "Ron", "Ronald", "Ronnie", "Rorian", 
      "Rory", "Ross", "Rufus", "Russell", "Ryan", 
      "S.", "Sal", "Sam", "Samson", "Samuel", "Saul", "Sawyer", "Seamus", "Sean", "Sebastian", "Seth", "Shane", 
      "Shannon", "Shaun", "Shawn",
      "Shooter", "Sonny", "Squire", "Stan", 
      "Stanley", "Stefan", 
      "Stephen", "Sterling", "Steve", "Steven", "Stewart", 
      "Stuart", "Syd", "Sydney", "Sylvester",
      "T.", "Tay", "Taylor", "Ted", "Terry", "Tim", "Timothy", "Timmy", "Todd", "Tony", "Trace", "Travis", "Trevor", 
      "Trey", "Treyvon", "Trip", "Tyler", "Tyrese", "Tyrone", "Tyson",
      "U.", "Ulf", "Ulred", "Ulysses", "Uriah", "Uther", 
      "V.", "Van", "Vance", "Varro", "Vaughn", "Vince", "Vincent", "Vinny", 
      "W.", "Wade", "Walker", "Walt", "Walter", "Wayne", "Will", "William", "Willy", "Wyatt", 
      "X.", "Xander", "Xavier", 
      "Y", "Yaron", "York", "Yuri", "Yves",
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
      "Bernadette", "Bernadine", "Bernice", "Bertha", "Bess", "Beth", "Bethany", "Betsy", "Betty", "Beverly", "Bianca", 
      "Bijou", "Blair", 
      "Blake", "Blakeley", "Blanche", "Blessing", "Bliss", "Blithe", "Blondie", "Blossom", "Blue", "Bo", "Bobbi", 
      "Bonnie", "Brandy", "Brea", "Brenda", 
      "Brianne", "Bridget", "Brienne", "Brin", "Briony", "Brit", "Britney", "Brittany", "Brooke", "Brooklyn", 
      "C.", "Caitlin", "Candice", "Candi", "Cara", "Carey", "Carla", "Carly", "Carrie", "Carol", "Caroline", "Cat", "Catherine", 
      "Cathy", "Cecilia", 
      "Celeste", "Charity", "Charlene", 
      "Charlotte", 
      "Chevonne", "Chloe", "Cicilia", "Cicily", "Clarice", "Claudia", "Cora", "Coral", "Coraline", "Corey", "Corina",
      "Crystal", "Cynthia",
      "D.", "Dani", "Danielle", "Daphne", "Darby", "Darcy", "Darla", "Deb", "Debbie", "Deborah", "Dee", "Delilah", 
      "Denise", "Destiny", "Dolores",
      "E.", "Eden", "Edith", "Elena", "Elizabeth", "Eloise", "Elowyn", "Emma", "Emerald", "Esme", "Esmerelda", "Eva", "Evan", 
      "Eve", "Evelyn", "Ever", 
      "F.", "Fae", "Faith", "Fawn", "Fay", "Fiona", "Flo", "Fran", "Francesca", 
      "G.", "Gabby", "Gabrielle", "Gayle", "Georgia", "Ginger", "Glenda", "Gloria", "Glory", "Gretchen", "Gwyn", "Gwyndalyn", "Gwyneth", 
      "H.", "Hanna", "Hannah", "Hayley", "Hazel", "Helga", "Henrietta", "Hermione", "Holly", "Hope", "Hunter",
      "I.", "Imogen", "Ingrid", "Irene", "Ireland", "Irma", "Isabelle", "Ivy",
      "J.", "Jaime", "Jamie", "Janelle", "Janet", "Janice", "Janine", "January", "Jean", "Jen", "Jennifer", "Jenny", "Jude", "Judy", 
      "June", "Justine", 
      "K.", "Kacy", "Kate", "Kay", "Kayla", "Kendall", "Kendra", "Kendyl", "Kim", "Kimberly", "Kylie",
      "L.", "Lacey", "Lana", "Lauren", "Laurie", "Lavender", "Leah", "Leigh", "Lena", "Leticia", "Liberty", "Linda", "Lisa", 
      "Louise", "Lucy", "Luna",
      "M.", "Maggie", "Marcy", "Margaret", "Margo", "Maria", "Mariah", "Marigold", "Martha", "Martina", "Mary", "Maurine", "May", 
      "Melania", "Melanie", "Melody", "Mercedes", 
      "Meredith",
      "Merrivale", "Mia", "Michaela", "Michelle",
      "Mila", "Mildred", "Milly", "Missy", "Misty",
      "Monica", "Monique", "Murielle", "Murietta", "Muse", "Musetta", "Mya",
      "N.", "Nadia", "Nadine", "Nancy", "Nelly", "Nettie", "Noelle", "Nora", "Norine",
      "O.", "Oakley", "Octavia", "Odessa", "Odette", "Olga", "Olive", "Olivia", "Opal", "Oriana",
      "P.", "Pam", "Pamela", "Paris", "Patricia", "Patty", "Paula", "Paulene", "Paulette", "Penelope", "Penny", "Piper",
      "Q.",
      "R.", "Rachel", "Rain", "Reba", "Rebecca", "Reece", "Renee", "Rhianna", "Rhiannon", "Rhonda", "Ripley", "Roberta", 
      "Robin", "Rochelle", "Roquelle", "Rosa", "Rose", "Rowen", "Ruby",
      "S.", "Sage", "Sally", "Sam", "Sandy", "Sarah", "Scarlett", "Shana", "Shannon", "Shauna", "Shawna", "Sherry", "Sheryl", "Sierra", "Skye", 
      "Skyler", "Snow", "Solest", "Stacey", "Starla", "Stella", "Steph", "Stephanie", "Sterling", "Stormy", "Summer", "Susan", 
      "Susanna", "Susie", "Sydney",
      "T.", "Tabitha", "Tammy", "Taylor", "Terri", "Theresa", "Tracey", "Trin", "Trinity", "Trudy",
      "U.", "Ulla", "Ulyanna", "Uma", "Ursula",
      "V.", "Velvet", "Vera", "Verona", "Veronica", "Vesper", "Vicki", "Victoria", "Violet", "Virgina",
      "W.", "Wanda", "Wendy", "Whisper", "Whitney", "Willow", "Winter",
      "X.", 
      "Y.", "Yasmine", "Yolanda", "Yvonne", 
      "Z.", "Zara", "Zelda", "Zena", "Zoe", "Zora"
    ]
      
    surnames = [
      "Aberdine", "Abraham", "Abrams", "Adams", "Ali", "Allen", "Anders", "Anderson", "Anthony", "Archer", "Armor", "Aslan",
      "Bach", "Bachmann", "Baker", "Beck", "Beckett", "Beckford", "Black", "Blair", "Blake", "Blue", "Briar", 
      "Bradford", "Bradley", "Brown", "Bruce", "Bush", "Butler",
      "Caesar", "Calahan", "Cardiff", "Cardin", "Carey", "Carlyle", "Carmichael", "Carmody", "Cartwright", "Carver", 
      "Charles", 
      "Chen", "Choi", "Cleinder", "Cleveland",
      "Cochran", "Cohen", 
      "Copperfield", "Cormier", "Cox", "Cranston", "Cruz",
      "Daniels", "Danielson", "Davenport", "David", "Davidson", "Davis", "Dela Cruz", "Denver", "de Silva", "Dix", "Dixon", "Doherty", 
      "Donchesky", "Drew",
      "Ellis", "Ellison", "Elway", "Elwood", "Ender", "Esparza", "Espinosa", "Eugene", 
      "Faber", "Fan", "Ferguson", "Fernando", "Finnegan", "Flake", "Ford", "Fowler", "Fox", "Franklin", "Frasier", "Friedman", "Fujiwara",
      "Gallagher", "Garber", "Garreth", "Garrett", "Garcia", "Gerber", "Gering", "Givens", "Goetze", "Gold", "Gomez", "Gonzalez", "Granden",
      "Grant", "Gray", "Green", "Grey", "Gurung",
      "Hamilton", "Hamm", "Hammond", "Harris", "Harrison", "Hawkins", "Hicks", "Hilton", "Hines", "Holt", "Hong", "Horne", "Horner", "Horton", 
      "House", "Houston", "Hughes", "Hussel", "Hwang",
      "Idder", "Ilton", "Ishida", "Ito", "Ivers", "Iverson",
      "Jackson", "James", "Jameson", "Jensen", "Jeffers", "Jefferson", "Jeong", "Johnson", "Jones", "Jordan", "Jovovich", "Justice", 
      "Kacey", "Kato", "Katz", "Kellogg", "Khadka", "Khan", "Khatun", "Kim", "Klein", "Kobayashi", "Kraft", "Kumar",
      "Lance", "Landers", "Landon", "Larimore", "Le", "Lebowsky", "Leibowitz", "Lee", "Li", "Lincoln", "Liston", "London",
      "MacArthur", "Mader", "Martin", "Martinez", "Masters", "Masterson", "Masuda", "Mathern", "Mathers", "Matsumoto", 
      "May", "Mays", "McCarthy", "McCormick", 
      "McMillan", "Mendoza", 
      "Miller", "Millsaps", "Mitchell", "Morgan", "Morris", "Morrison", "Mueller", "Muridian", "Myer",
      "Nakamura", "Naples", "Nelson", "Ngo", "Nguyen", "Nixon", "Norrington", "Norris", "Nuberg",
      "Oakley", "Obermeyer", "O'Malley", "Ono", "O'Reilly", "Orville", "Oscara", "Owen", "Owens", "Overby",
      "Pace", "Paris", "Park", "Patel", "Pepper", "Peterson", "Phan", "Phillips", "Phoenix", "Pitt", "Pittman", "Poe", "Popper", "Potter", 
      "Prince", "Princeton", "Pruitt", "Pryor",
      "Quill", "Quimby", "Quincy", 
      "Rafferty", "Ramos", "Rasmussen", "Red", "Redondo", "Reece", "Remington", "Reyes", "Reynolds", "Richard", "Richards", 
      "Richardson", "Ricketts", "Rivera", "Roach", "Robin", "Robinette", "Robins", "Robinson", "Robles",
      "Rodrigo", "Rodriguez", "Rogers", "Romeo", "Romero",
      "Roosevelt", "Ross", "Ruiz", "Rydell", 
      "Samson", "Sanchez", "Sasaki", "Sato", "Sawyer", "Schwartz", "Searfoss", "Seaver", "Shannon", "Shapiro", "Shire", "Silva", 
      "Silver", "Simpson", 
      "Singh", "Smith", "Song", "Stanford", "Stanley", "Starr", "Stefano", "Stephens", "Sterling", "Stevens", "Stevensen",
      "Strauss", "Sun", "Suzuki", "Sylvester", 
      "Tadich", "Tanaka", "Tanner", "Thapa", "Thatcher", "Thomas", "Tran", "Tyson",
      "Ubrick", "Underton", "Underwood", 
      "Vale", "Vance", "Van Winkle", "Vicente", 
      "Walker", "Wang", "Warner", "Washington", "Wayne", "Welch", "Werner", "White", "Whitman", "Whittle", 
      "Williams", "Wilson", "Winchester", "Wong",
      "Xanth", "Xavier", 
      "Yadav", "Yamada", "Yamaguchi", "Yamamoto", "Yang", "Yarrow", "Yellow", "Yen", "Yoon", "York", "Yosef", "Yoshida",
      "Zane", "Zagorsky", "Zhang", "Zimmerman"
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