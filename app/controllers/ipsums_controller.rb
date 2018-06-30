class IpsumsController < ApplicationController
  def show
  end

  def ipsum
    capital_words = [
      "2nd Amendment", "Alabama", "America", "Bama", "Boss 302", "Boy Scouts", "Cajun", "Carhartt", "Chevy", 
      "Copenhagen", "Dolly Parton", "Elvis", "Graceland", "Harley-Davidson", "Jack Daniels", "Jeep", "Kentucky", "Kid Rock", "Marlboro", 
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
      "ham radio", "hard hat", "hay", "hale bales", "heaven", "hell", "Hemi", "henhouse", "herd", "hick", "hillbilly", "hissy fit", "hogs", 
      "holler", "Hollywood", "holster", "honky", "honky-tonk", "hood scoop", "hornet", "horse", 
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
      "Stetson", "succotash", "supercharged", "supper", "swamp", "swather", "sweet tea", 
      "Tabasco", "tackle", "tackle box", "tadpole", "tarnation", "tater", "Texas", "these parts", "throttle", "t-top", "ticks",
      "torque", "tractor", "tradition", 
      "trailer", "train", "Trans-Am", "transmission", "trigger", "trolling", "tuckered", "turkey", "turnip greens", "twine",
      "uncle", "USA", "values", "varmint", "veterans", "Virginia",
      "waders", "wadn't", "wagon", "wagonwheel", "welder", "western", "West Virginia", "whiskey", "white lightning", "white trash", "whittle", 
      "Winchester", "work",
      "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha", 
      "Z-28"]

    capital_words2 = [
      "Adventure", "Alchemist", "Arcane", "Broadsword", "Castle", "Cleric", "Cloak", "Damsel", "Dragon", 
      "Duke", "Dwarf", "Elf", "Enchantress", "Faerie", "Guild", "Halfling", "Innkeep",
      "Jester", "King", "Knight", "Legion", "Lord", "Lore", "Mage", "Magic", "Mythical", "Necromancer", 
      "Oracle", "Paladin", "Potion", "Queen", "Relic", "Rune", "Scepter", "Sorcery", "Spell", "Sword", "Townsfolk", 
      "Unicorn", "Void", "Wizard", "Wraith"
      ]
      
    words2 = [
      "abbot", "acolyte", "accursed", "acrobat", "Admiral", "aegis", "aeronaut", "aether", "affliction", "ale", "alleyway", "alloy", 
      "altar", "ambassador", "amber", "amulet", 
      "ancestral", "ancient", "angel", "ankh", "anvil", "apocalypse", "arbalest",
      "archangel", "architect", "archive", "arena", "aristocracy", "armaments", "armor", "armorer", 
      "armory", "arrow", "arrowhead", "artesan", "artillator", "artifact", "artifice",
      "assassin", "assault", "assembly", "astral", "asylum", "atonement", "augur", "aura", "automaton", "avatar", "axe", "baker", 
      "band", "bandage", "bandit", "banner", "banquet",
      "barbarian", "barber", "barbican", "bard", "baron", "baroness", "barricade", "barrow", "barter", 
      "basilard", "basket", "bat", "baton", "battering ram", 
      "battle", "battlefield", "battlements", "bazaar", "bear", "beast", "beef",
      "beefeater", "beer", "beeswax", "beggar", "beguile", 
      "beheading", "behemoth", "belt", "berkserker", "bindings", "bishop", "blacksmith", "bladder",
      "blanket", "blasphemy", "blessing", "bloodletter", 
      "blood sausage", "boar", "boarding house", "boat", "bog", "bolt", "bones", "bone setter", "book",
      "boots", "boson", "bounty hunter", "bow", "bowyer", "bracelet", "bracer", "brawl", "brawler", "brazier", "bread", "breastplate", 
      "breech", "brew", "brigand", "bristle",
      "bronze", "brood", "broth", "brothel", "buckler", "bull", "butcher",
      "caltrips", "camp", "campfire", "candle", "candlestick",
      "cannibals", "cape",
      "Captain", "captive", "captor", "caravan",
      "cardinal", "cards", "carnival", "carriage", "cart", "castaway", "cat", "cat o' nine tails", "cataclysm",
      "catacombs", "catapult", "cathedral", "cattle", "cauldron", "causeway", "cavalier", "cavalry", "celestial", "cell", "ceremony",
      "chain mail", "chains", "chamber pot", "chamfron", "champion", "channeler", "chaos", "chapel", "chariot", "charismatic", "charm", "chickens", 
      "chieftain", "chieftess",
      "chimera", "chimney", "chisel", "chivalry", "choir", "chopping block", 
      "Chosen One", "city", "clairvoyant", "clan", "claw", "cleaver", "clerk", "climb", "clinic", "clock tower", "cloth",
      "club", "coals", "coat", "coat of arms", "coffin", "cog", "coif", "Colonel", "coin", "coinpurse", "commodore", "commoner", 
      "Common Tongue", "companion", 
      "company", "compass", "conflagration", "conjurer", 
      "consecration", "constable", "contract", "contraption", "cook", "copper", "corridore", "corsair", "cot", "cottage", "count", 
      "countess", "cough", "county", "coup",
      "court", "courtesan", "courtier", 
      "coven", "covenant", "cow", "cowl", "cream", "creature", "crest",
      "crone", "crossbow", "crow", "crow's nest", "crown", "crucible", "crusade", "crystal", "cup", "curse", "cutthroat", "cyclops", "daemon", "dagger", 
      "dancer", "dark", "darkness", "defend", "deity", "demigod", "demon", "den", "desecration", 
      "dethrone", "devil", "dice", "diplomacy", "diplomat",
      "dire wolf", "dirk", "disguise", 
      "divine", "diviner", "doctor", "doctrine", "doublet", "dowager", "dowery",
      "dragoon", "drawbridge", "dreadnought", "dress", "drifter", "drover", "druid", 
      "drummer", "dryad",
      "duchess", "duel", "dungeon", "economy", "eggs", "elemental", "embargo", "emissary", "empath", "emerald", 
      "Emperor", "Empress", "enchantment", 
      "engineer", "enigma", "Ensign", "entrails", 
      "envoy", "escape", "escort", "espionage", "ethereal", "evil", 
      "evocation", "exalted", "executioner", 
      "exorcism", "exorcist", "expedition", "fairy dust", "falconer", 
      "familiar", "fang", "farmer", "fauchard", "feather", "fence", "fencing", "festival", "fey", "fighter", "fire", "firewood", 
      "fireplace", "fisherman", "fish hook", "fishmonger", "fishwife", "flag", 
      "flail", "flask", "fleet", "fletcher", "flint", "flog", "flute", "fly", "folk magic",
      "folk medicine", "forage", "foreigner", "forest", "forge", "fork", "fortifications", "fortress", "fortune teller", 
      "foundry", "fox", "fray",
      "friar", "funeral",
      "gaelor", "galleon", "gallows", "gambler", "games", "garb", "gargoyle", "garrote", "garter", "gates", 
      "gatehouse", "gateway", "gauntlet", "gear", "gelding", 
      "gemstone", "General", "ghost", "ghoul", 
      "giant", "giant spider", "gibbet", "glaive", "glass", "glory", "glyph", 
      "gnome", "goat's milk",
      "goblet", "goblin", "gods", "goddess", "gold",
      "golom", "gorgon", "grail", "gravedigger", "grave robber", "graveyard", "gremlin", "grieves", "griffon", 
      "grinding wheel", "guard", "guardian", "guard tower", "guest",
      "guide", "guissarme",
      "gypsy", "hag", "halberd", "ham", "hamlet", "hammer", "hangman", "harbinger", "harp", "harvest", "hatchet", "hatchling", "hauberk",
      "healer", "hearth", "heir", "helm", "helmsman", "herald", "herbalist", "heresy", "hermit", "hero", "heroic", "heroine", "hexer", 
      "hide", "highborn",
      "highwayman", "hilt", "history", "hoard", "hogs", "honor", "hood", "horn", "horse", "horseman", "host", "hound", "hourglass", "hubris",
      "huntsman", "hut", "icon", "illusionist", "imp", "infantry", "illness", "infiltrator", "ink", "inn", "inquisitor", "interim", 
      "interrogation", "invisibility", "iron", "javelin", "jeweler", "jewels",
      "joust", "judge",
      "justice", "keel", "keelhauling", "keep", "key", "kindling", "kingdom", "knapsack", "knife", "knighthood", "knot", "kraken", "labyrinth", "Lady", 
      "lair", "lamellar", "lamp", "lance", "lancet", "lantern", "lash", "law",
      "leather", "leech", "legend", "leprechaun", "levitate", "Lieutenant", "lich", "light", "lighthouse", "linament", 
      "livery", "lock", "lockpick", "lodestar", "longbow", 
      "loot", "lowborn", "lumberjack", "lunar",
      "lurker", "lute", "lycanthrope", "lyre", 
      "mace", "machicolation", "magician", "magistrate", "magus",
      "maiden", "mainsail", "mangonel", "manservant", "mantle", "map", "mare", "marionette", "market", "marksman", "martyr", "mask",
      "mast", "master", "maul", "mausoleum", 
      "mayor", "maze", "mead", "medic", 
      "medicine", "melee", "mercenary", "merchant", "mermaid",
      "merrymaking", "messenger", "milkmaid", "mime", "miner", "minotaur", 
      "minstrel", "mirror", "mirth", "mischief", "mist", "moat", "monacle", "monarch", "monk", 
      "mount", "mule", "mummer", "murder holes", "mysterious", "nails", "nanny", 
      "navigation", "necklace",
      "needle", "negotiation", "nephilim", "newt", "nightcap", "nightmare", "noble", "nock", "nomad", "noose", "nun", "nunnery", "nymph", 
      "oarsman", "obsidian", "occultist", 
      "ogre", "ointment", "oligarchy", "onyx", "opal", "opaline", "orb", "orc", "ore", "orphanage", 
      "oubliette", "outsider", "oven", "overthrow", "ox cart", "oxen", "pack", "parapet", "party", "passageway",
      "peasant", "peg", "pell", "penny", "petticoat", "phantom", "philosopher", "pickaxe", "pie", "pike", "pious", "pipe tobacco", "piper", 
      "pirate", "pitch", "pitchfork", "plague", "plague doctor", "plane", 
      "plate mail", "platoon", "pocket", "poet",
      "poison", "polearm", "politics", "pony", "pork", "portal", 
      "portcullis", "powder", "powers", "predator", "priest", "priestess", "prince", "princess", 
      "prison", "proclamation", "prophesy", "property",
      "protection", "protector", "psychic", "pulpit", "pup", "puppeteer", "pyre", "pyromancer", 
      "quarterstaff", "quest", "quill", "quiver", "raft",
      "rags", "raid", "raider", "rail", "rampart", "ranger", "rapier",
      "raven", "raze", "razor", "realm", "reanimate", "rebellion", "rectory", "redemption", "regency", "regeneration", "regent", 
      "regiment", "registrar", "reincarnation", "reins",
      "religion", "remedy", "rescue", "resurrection", "rider", "riddle", "ring", "rite", "ritual", "road", "roar", "roast", "robber", "robes", "roc", 
      "rogue", "root", "rope", "royal", "royal seal", "ruby", "ruler", "saber", "saboteur", "sack", "sacrifice", "saddle", "sage", 
      "sailor", "salvage", "salt", "salt pork", "salve", "sanctuary", "sandals", "sapphire", "sarcophagus", "satchel", "satyr", "savage", 
      "savant", "scabbard", "scaled", "scavenger", "scimitar", "scion", "scourge",
      "scout", "scribe", "scroll", 
      "scrying", "scullery", "scythe", "seance", "secret passageway", "seer", "seminary",
      "sentry", "serf", "servant", "sextant", "shackles", "shade", "shadow", "shaft",
      "shaman", "shapeshifter", "sheep", "shepherd", "shield", 
      "shieldmaiden", "shimmer", "ship", "shrine", "shroud", "sickle", "siege", "sigil", "silk", "silver", "Sir", "siren", "skeleton", "skinner", 
      "skirmish", "skull",
      "skyship", "slaughter", "slavery", "sling",
      "slippers", "slums", "smith", "smuggler", "snake oil", "soap", "soar", "solar", "soldier", "soothsayer", 
      "sorcerer", "soup", "sow", "spear", "specter", "spectral", "spellbook",
      "spellcaster", "spetum", "spike", "spinster", "spire", "spirit", "spoon", "spy", "spyglass", "squadron", "squire", "stable", "staff", "stallion", "statue", "steed", "steel",
      "steeple", "stew", "stirrups",
      "storyteller", "stowaway", "studded leather", "summoner", "surcoat", "swashbuckler", "swindler", "swine", "tabard", "tablet", "tallow",
      "talons", "tanner", "tapestry",
      "tariff",
      "tavern", "tax collector", "teleportation", "temple", "tent", "territory", "the rack", "thief", "thread", "throne", "tinder", 
      "tinkerer", "toga", "tomb", "tome", "top sail", "torch", 
      "torture chamber", "totem", 
      "tournament", "tower", "trade", "translator", "translucent",
      "transmutation", "trap", "trap door", "trapper", "traveler", "trebuchet", "treason", "treasure", "trial", "tribe", "tribunal", "troll", 
      "troubadour", "trousers", 
      "trumpets", "trunk",
      "tumbler", "turnkey", "turret", "tusk", "tyranny", "undead", "undertaker", "uprising", "urn", "usurper",
      "valient", "Valkyrie", "vampire", "veil", "vengeance", 
      "venom", "vestments", "vial", "vicar", "vigilant", "vigor", "village", "virgin", "vision", "voulge", "vow", "wager",
      "wagon", "waistcoat", "wall", "wand", "ward", "wares", "warhammer", "warlock", "warlord", "war machine", "warrior", 
      "watchman", "watchtower", "weaver", "wedding", "well",
      "werewolf", "wetnurse", "wheel", "whetstone", "whip", "wicked", "wicker", "widow", "widower", "wight", "winch", "windmill", "wine", 
      "wine skin", "winged", "witch", "wolfpack", "wool", "wormwood", "woven", "writ", "wyrm", "yarn", "yoke"
      ]
      
    capital_words3 = [
      "Alpine", "Basin", "Bay", "Canyon", "Cavern", "Creek", "Desert", "Estuary", "Evergreen", "Flower", "Forest", "Glacier", 
      "Gulf", "Gully", "Harbor", "Hill", "Icycle", "Island", "Jungle", "Knoll",
      "Lake", "Maple", "Marsh", "Meadow", "Mountain", "Nightfall", "Ocean", "Peak", 
      "Plains", "Pond", "Ridge", "River", "Sea", "Shoal", "Swamp", "Treetops",
      "Tundra"
      ]
      
    words3 = [
      "acclivity", "afternoon", "alcove", "algae", "alkali", "alp", "anchorage", "apex", "aquafer", "archipelago", "arm",
      "arroyo", "ascent", "ash", "atoll", "avalanche", "bank", "bar", "bark", "barrens", "bayou", "beach", "beck",
      "bedrock", "bight", "billow", "blizzard", "blossom", "bluff", 
      "bog", "boscage", "bottoms", "boulder", 
      "bracken", "brake", "brambles", "branch", "brash", "break",
      "breeze", "briar", "bridge", "brook", "brow", "brume", "brush", "bud", "bush", "butte", "cave", "cay", "ceiling",
      "chaparral", "chill", "chinook", "cliff", "climb", "cloudburst", "cloudcover", "clouds", "clover", "cluster", "coal",
      "cobblestone", "cocoon", "comet", "conifer", "continent", "cope", 
      "coppice", "copse", "coral", "course", "cove",
      "crag", "crest", "crevasse", "crevice", "crust", "culvert", "current", 
      "cyclone", "dawn", "deluge", "depression", "dew", "dimness", "dirt", "ditch", "dome",
      "downpour", 
      "drain", "draw", "drift", "driftwood", 
      "drizzle", "droplet", "dune", "dust devil", "earth", "earthquake", "eclipse",
      "eddy", "elevation", "eminence", "enclave", "eruption", "esker", "evening", "eventide", "everglade", "fauna", "fell", "fen", "fern", 
      "film", "firth", "fjord", "flakes", "flats", "flock", "flood", "floor",
      "flora", "floret", "flow", "floweret", "flurry", "fog", "foliage", "freshet", "frost", "fruit", "fumes", "galaxy", "gale",
      "garden", "glade", "glen", "gloaming", "gloom", "gold", "gradient", "gravel", "grit", "grove", "gust", "hail", 
      "half-light", "hardwood", "haven", "haze", "headland", "heap", 
      "heat", "heath",
      "height", "herb", "herd", "highland", "hillock", "hilltop", "hinterland", "hive", "hole", "hollow", "hummock", "hurricane",
      "ice", "iceberg", "inclination", "incline", "inlet", "isle",
      "knuckle", "lagoon", "land", "landslide", "lava", "lea", "leaves", "ledge", "lightning", "loam", "loch", "lodge", "lowland",
      "marshlands", "maze", "mesa",
      "mesquite", "metal", "meteor", "mineral", "mire", "mist", "mistral", "monsoon", "moon", "moonlight", "moors", "morass", "morning", "moss", 
      "mound", "mouth", "muck", "mud", "mudslide", "murk",
      "mushrooms", "narrows", "natural", "nebula", "nettles", "night", "oak", 
      "oasis", "ore",
      "outback", "outcropping", "overcast", "overgrowth", "overhang", "palisade", "pasture", "peat", "pebble", "peninsula", "perennials",
      "permafrost", "pike", "pine cone", "pines", "pit",
      "plant", "point", "posy", "pother", "precipice", "precipitation", "prominence", "promontory", "protuberance", "pulp",
      "quag", "quagmire", "quake", "quarry", "quicksand", "race", "rain", "rainfall",
      "range", "rays",
      "reef", "refuge", "retreat", "rill", "rindle", "rise", "riverbed", "rivulet", 
      "rock", "rock face", "rockslide", "roof", "rubble", "run", "runnel", "rush", "sage", "sagebrush", "sahara", "sanctuary", "sand", 
      "sandbar", "sap", "sapling", "savannah", "scarp", "scree", "scud", "scum",
      "sediment", "seedling", "seeds",
      "shade tree", "sheer", "shelf", "shelter", "shoot", "shooting star", "shower", "shrubbery", "sierra", 
      "skerry", "slab", "slag", "sleet", "slope", "slough", 
      "slush", "smoke", "snow", 
      "snowdrift", "soil", "sound", "spark", "spate", "spike", "spray", "spring", "sprinkle", "spritz", "spur", 
      "squall", "stack", "starlight", "stars", "steam", "steppe", "storm", "strait", "stump", "summer", "summit", "sump", "sun", "sundown", 
      "sunrise", "surf", "swarm", "swelter", "talus", "tangle", "tempest",
      "thicket", "thorn", "thorns",
      "thunder",
      "thunderclap", "thunderhead", "tidal wave", "tide", "timber", "tip", "topiary", "tor",
      "tornado", "torrent", "trees", "tremor", "tributary", "tropical", "trunk", "tumbleweed", 
      "tunnel", "twilight", "twister", 
      "typhoon", "underbrush", "undercurrent", "undergrowth", "undertow", "upland", 
      "vapor", "vegetation", "veldt", "Venus", "vertex", "vine", 
      "volcano", "waddy", "wash", "wasteland",
      "water", "watercourse", "waterway", "waves", "weald", "web", "weeds", "wetlands", "whirlwind", "wild", "wilderness", "willow", 
      "wind", "windstorm", "winter", "woodland", "woods"
      ]
      
	capital_words4 = [
      "Apocalypse", "Atlanta", "Atomic", "Batteries", "Biohazard", "Bottled water", "Bug-out bag", "Bunker", 
      "Canned food", "Contagion", "Diesel", 
      "Disease", "Doomsday",
      "Double-barrel", "Emergency", "Epidemic", 
      "End times", "Extinction", "Fallout", "Filter",
      "Fuel", "Gas mask", "Gasoline", "Gear", "Gunpowder", "Hospital", "Humanity", "Iron sights", "Kit", 
      "Loadout", "Mag", "Mutation", "Nuclear",
      "Outbreak", "Pandemic", "Plague", "Radiation", "Repair", "Rifle", "Quarantine", "Scavenge", "Scrap",
      "Shotgun", "Soldiers", "Supplies", "Virus", "Zombie"
      ]
      
    words4 = [
      "9mm", "12-gauge", "abandoned", "airwaves", "aluminum stove", "ammo", "ammo can", "ammunition", "amputation", 
      "antibiotics", "armageddon", 
      "armor-piercing", "army",
      "arrows", "assembly", "asteroid", "atmosphere", "ATV", "axe", "axe handle",
      "backpack", "barb wire", "barricade", "barter", "baseball bat", "beard", "binoculars", "blankets", 
      "body armor", "bolt-action", "boots", 
      "bow and arrow", "breech loader", "buckshot", "burial site", "burning",
      "cache", "caliber", "camo", "camouflage", "camp", "campfire", "campsite", "candles", "cannibals", "canning", 
      "canteen", "capture", "cars", "carcass", "cartridge",
      "catastrophe", "cataclysm", "cauterize", "CB radio", "CDC", "chainsaw", "chamber", "charcoal", 
      "charger", "checkpoint", "civilization", "climate", "clinic", "coat",
      "coffin", "collapse", "collision", "community", "compass", "cook", "corpse", "countdown", "crossbow", "crowbar", "crows",
      "dagger", "damage", "dead", "death", "destruction", "divine retribution", "doctor", "dog", 
      "doomed", "downfall", "dust cover", "dynamite",
      "earthquakes", "electricity", "endangered species", "end of days", "end of the world", 
      "engineer", "E-tool", "every man for himself", "explosives", "fallout shelter", "famine", "FEMA camp", "field dressing", "fire", "firearms", 
      "firing pin", "first aid kit", "fishing", "fission", "flak jacket",
      "flames", "flashlight", "food", "forage",
      "four horsemen", "frontier", "full metal jacket", "fusion",
      "garden", "gather", "generator", "genetic mutation", "global", "global warming", 
      "gravesite", "grid", "guns", "gutted", "hacksaw", "hammer", "hat",
      "hatchet", "headlamp", "hell on earth", "helmet", "hideaway", "hockey stick", "hollow-point", "horse", "hotwire", 
      "humvee", "hunting", "hurricanes", "hygiene",
      "ice age", "incendiary", "iodine",
      "jack", "jacket", "JP-8", "Jeep", "judgment", "jumper cables", "junk",
      "kill or be killed", "knife",
      "lamp", "lantern", "leather", "Leatherman", "lever action", "light", "lighter", "live off the land",
      "Mad Max", "magazine", "magnum", "map", "marksman", "mass graves", "matches", "medic", "medicine", 
      "mercenary", "meteor shower", "MRE", "mutant",
      "NATO", "navigate", "negotiation", "non-perishables", "nurse", "NVGs", "nylon",
      "oil", "outdoorsman",
      "painkillers", "paracord", "party", "peanut butter", "pillage", "pistol", "planting", "plate carrier", "pliers", "poison", "pollution", 
      "potassium", "prepper","propane", "provisions", "pump",
      "pump-action", "purified water", "quiet", "radiation suit", "radio", "raid", "raiders", "ransack", "rations", 
      "ravagers", "rebuild", "reckoning",
      "renegade", "rescue", "respirator", "resources", "resupply", "rimfire", "rope", "rotting", 
      "rounds", "rovers", "rucksack",
      "salt", "salvage", "savage", "saw", "sawed-off", "scientists", "screwdriver", "shallow grave", "shells", 
      "shelter", "shovel", "shrapnel", "silencer", "sinners", "siphon", "skin", "slavers", "slingshot",
      "sneak", "sniper", "solar flare", "solar panel", "spigot", "survival",
      "starvation", "stash", "stitch", "storms", "straps", "suture", "SUV",
      "sword", "syringe", 
      "tank", "tanto", "tent", "tidal wave", "tinker", "tire iron", "together", "tools", "tracker", "trade", "transmission", "trapping", 
      "travel", "tripwire", "truck", "tuna", "two-way radio",
      "undead", "unmarked grave", "urban",
      "vaccine", "vault", "vegetation", "vehicle", "ventilation", "veteran", "vulture",
      "walker", "walkie-talkie", "war", "warrior", "wasteland", "water", 
      "water bag", "whetstone", "wild", "wilderness", "wire", "wound", "wrench"
      ]
      
    capital_words5 = [
      "Bodily fluids", "Clown", "Corpse", "Danger", "Dark", "Deceased", "Eaten", "Evil", "Fear", "Full moon", 
      "Graveyard", "Hearse", "Hostel", "Killer", "Lure", "Maggots", 
      "Manhunt", "Midnight", "Morgue", "Mutilated", "Odor", "Pain", "Panic", "Paranormal", "Phobia", "Remains", "Scream", 
      "Serial killer", "Shallow grave", 
      "Silver bullet", "Skull", "Terror", "Toe tag", "Undertaker", "Victim", "Vulnerable"
      ]
      
    words5 = [
      "abandoned", "abduction", "abused", "acid", "accursed", "adopted", "after dark", "after hours", "alarm", "aliens", "alleyway", "alligators", 
      "alone", "altar", "ambulance", "ammo", "ammunition", "amnesia",
      "amputation", "anal cavity",
      "angel", "angled", "antisocial", "apparition", "artery", "asleep", "asylum", "attacker", "attic", "attorney", "audible", "augur", 
      "awakened", "axe",
      "back roads", "backwoods", "bad luck", "bad moon", "bang", "banish", "barking", "basement", "bathtub", "bats", 
      "battered", "beaten", "bears", 
      "beast", "begging", "behavior", "beheaded", "belly-up",
      "bible", "bigfoot", "bitten", "black light", "bled", "bleeding", "blessing", "blink", "blizzard", "blood", 
      "blood-thirsty", "bloody", 
      "bludgeon", "boathouse", "body", "boiled", "boiler room", "bones", "bonesaw", "boogeyman", "boonies", "boots", "bound", 
      "brains", "breath", "bribe", "broken neck", "bruised", "bugs", "bump", "burial", "burial ground", "buried alive", "butcher",
      "cabin", "cage", "candle", "cannibal", "captive", "capture", "carcus", "car jacking", "carnival", "carousel", "car stall", 
      "carving", "case", "casket", "castle", "cat", "catacombs", "cave", "cellar", "cemetery", "chains", "chainsaw", "chamber", 
      "charming", "chateau", "chatter", "chemicals", "childhood", "chilling", "chills", "chloroform", "chopping block", "chupacabra", "church", "circumstantial", "circus", 
      "circus tent", "clamor", "claustrophobic", "claws", "cleaners", "cloak", "closet", "cockroach", "coed", "coffin", "coma", 
      "concrete", "confined", "consumed", "control",
      "contusion", "convict", "conviction", "coroner", "corridor", "cough", "court",
      "coven", "cowl", "crawl space", "crazy", "criminal",
      "crawly", "creaking", "creature", "creepy", "cremation", "crime scene", "crone", "crucifix", "crutches", "cult", "curfew", "curse",
      "cut",
      "darkness", "dead", "death", "decay", "decomposition", "delight", "demon", "dentist", "deputy", 
      "derailed", "deserted", "destiny", "details", 
      "detective", "devil", 
      "digested", "diner", "dirt road", "disappear", "disaster",
      "disconcerted", "disease", 
      "disembowel", "disfigured", "disguise", "dismember", "DNA", "doctor", "doll", "dollhouse", "dragged", "dreams", 
      "dried blood", "drill", "driver",
      "drowning", "drug", "duct tape", "dump", "dungeon",
      "electric chair", "electrocuted", "embalming fluid", "emotional", "engorged", "entrails", "erratic", "escaped", "estate",
      "ether", "evade", "evidence", "examine", "execution", "exorcism", "exorcist", 
      "experiment", "eyelids", "eye patch", "eyes",
      "fangs", "FBI", "feeding", "feds", "femur", "fetid", "filth", "fingernail", "fingerprints", "fire", "fireplace", 
      "firing squad", "flashlight", "flat tire", "flesh", "flicker", "flies", 
      "foaming", "fog",
      "followed", "footprints", "fortune teller", "foster care", "foster home", "frail", "freak", "freakshow", "frightening", "froth", "frozen", 
      "fugitive", "fumes", "funeral", "furnace",
      "gagged", "gargoyle", "gas", "gas chamber", "gasoline", "gasp", "gas station", "genitals", "ghost", "ghoul", "gnaw", 
      "goosebumps", "gooseflesh", "gorged", "Gothic",
      "government", "gratification", "gravestone", "graveyard", 
      "graveyard shift", "grim reaper",
      "groaning", "guns", "gunshot", "gut feeling", "guts", "gutted", "gypsy",
      "hag","Halloween", "handcuffs", "hanged", "harlot", "harrowing", "hatchet", "haunted", "hazard", "headstone", "heart", "heartbeat", 
      "hell", "hellhound", "hellscape", "help",
      "hemorrhage", "hex", "hidden", "highway",
      "hitchhiker", "hive", "holy water", "hood", "hook", "hooker", "horror", "horrorshow", "hospital", 
      "hostile", "hovel", "howling", "hunger", "hunted", "hunter", "hurt",
      "identify", "identity", "ignition", "ill-fated", "ill-meaning", "inbred", "incantation", "incinerate", "incubus",
      "inheritance", "insane", "insects", 
      "internment", "intestines", "intruder", "intuition", "investigation",
      "jack-in-the-box", "jail cell", "jaws", "jogger", "jolted", "journalist", "judge", "jump", "jump start", "jury", "jutting",
      "kidnapping", "killed", "knife", 
      "laboratory", "lair", "lake", "lamb", "landfill", "lashed", "law", "leech", "leprechaun", 
      "lethal injection", "light", "lightning", "Lilith", 
      "lipstick", "liver", "Lizzie Borden", "locked", "lock-up", "locusts", "lost", "lotion", 
      "Lucifer", "lunatic", "lurking", "lynching",
      "machete", "maintenance crew", "manor", "mansion", "marionette", "marshall", "mascara", "mask", "mass grave", "maul", "maw", "meat hook", "medical examiner", 
      "medium", "mess", "methodical", "middle of nowhere", "mill", "mirror", "mist",
      "moaning", "modus operandi", "moist", "molested", "monster", "moon", "moonlight", "mortuary", "most wanted", "motel", "moth",
      "muffled", "mummifed", "murder", "murder weapon", "music box", "mysterious",
      "neck", "needle", "neighborhood watch", "nerve-wracking", "nervous", "news", "newspaper", "nibble", "night", "nightmare", "night watchman", "noose", 
      "nostrils", "note", "nurse",
      "occult", "officer", "old", "omen", "open water", "operation", "oracle", "organ harvester", "organs", 
      "orphanage", "Ouija board", 
      "outhouse", "overdose", "overpowered",
      "Pagan", "painting", "palm reading", "panel van", "panic room", "paralysis", "paramedic", "paranoia", "parking garage", 
      "passageway", "passed away", "pattern",
      "pentagram", "petrified", "pinched",
      "plane crash", "plea bargain", "pleading", "pleasure", "pliers", "poisoned", 
      "policeman", "poltergeist", "possessed", "pounce", "powerless",
      "power outage", "prayer", "precognition", "pregnant", "premonition", "priest", "prison", "private investigator", 
      "profiler", "prophesy", "prostitute", 
      "psychic", "psychiatric hospital", "psycho", "psychologist", "pulp", "pump", "puppets", "pursued", "pyre",
      "quiet", "quivering",
      "rabies", "raid", "rain", "rancid", "ransom", "rasping", "rattling", "rats", "recruited", "reek", "reflection", "regurgitated", 
      "removed",
      "rest area", "restless", "revenge", "rickety", "rite", "ritual", 
      "rope", "rot", "rubber gloves",
      "sacrifice", "saint", "sarcophagus", "Satan", "Satanic", "scalp", "scarred", "scary", "scratching", "scrubs", "scythe", 
      "seance", "search party", "seizure", "semen", "serrated", "sewer", "sewn shut", "shadows", "shambling", "shapeshifter",
      "sharks", "shattered", "shells", "shelter",
      "sheriff", "shipwreck", "shivering", "shock", "shrine", "shroud", "shudder", "shuffling", "sideshow", "sigh", "sighting",
      "silence", "six feet under", "sixth sense", "skeleton", "skeleton crew", "skin",
      "skinned alive", "slammed", "slasher", "slaughter",
      "slenderman", "slimy", "smother", "smuggled", "snakes", "snout", "snowed in", "soil", "soiled",
      "sole survivor", "solved", "soul", "soundproof", "spacecraft", "spell", "spiders", "spinal fluid", "spirit", "splatter", 
      "spoiled", "spooky", "spray", "squallor", "stab", "stairs", "stalker", 
      "static", "statue", "steel", "stench", "sting", "stitch", "storm", "storm drain", "straightjacket", "strange",
      "stranger", "strangled", "street walker", "succubus", "suicide", "summer camp", "supernatural", "surveillance",
      "suspect", "swab", "swamp", "SWAT", "sweat", "swollen", "symbols", "syringe",
      "talons", "tapping", "tarot", "tattered", "taxicab", "teeth", "temple", "tentacles", "terrified", 
      "therapist", "throat", "thud", "thump", "tombstone", 
      "tooth", "town drunk", 
      "torture", "trafficking", "trailer", "trapped", "trash bags", "traumatized", "treachery", "tree branches", "trembling", "trenchcoat", 
      "trial", "trigger", "troll", "troubled", "truck stop",
      "trunk", "tunnel", "twins", "twisted", "twitch",
      "UFO", "unconscious", "underground", "unknown", "unsolved", "unusual", "urn",
      "vacation", "vampire", "van", "veins", "vengeful spirit", "venom", "violated", "virgin", "visions", "voodoo", "voodoo doll",
      "ward", "warning", "warts", "weird", "wendigo", "werewolf", "wheelchair", "wheezing", "whimper", "wilderness", "wilted", "wind", 
      "wind-up monkey", "witch", "witchcraft", 
      "witch doctor", "withered", "witness", "wolves", "woods", "woodshed", "worms", "wreck", "wrong turn",
      "zombie"
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
    
    @ipsum1 = ran_capital1 + " " + ran_words1.delete('"') + ". " + ran_capital2 + " " + ran_words2.delete('"') + ". " + ran_capital3 + " " + ran_words3.delete('"') + ". " + ran_capital4 + " " + ran_words4.delete('"') + ". " + ran_capital5 + " " + ran_words5.delete('"') + "."
    
    fantasy_caps1 = capital_words2.sample
    fantasy_caps2 = capital_words2.sample
    fantasy_caps3 = capital_words2.sample
    fantasy_caps4 = capital_words2.sample
    fantasy_caps5 = capital_words2.sample
    
    sentence2_len1 = rand(5...30)
    fantasy1 = words2.sample(sentence2_len1).map(&:inspect).join(' ')
    sentence2_len2 = rand(5...30)
    fantasy2 = words2.sample(sentence2_len2).map(&:inspect).join(' ')
    sentence2_len3 = rand(5...30)
    fantasy3 = words2.sample(sentence2_len3).map(&:inspect).join(' ')
    sentence2_len4 = rand(5...30)
    fantasy4 = words2.sample(sentence2_len4).map(&:inspect).join(' ')
    sentence2_len5 = rand(5...30)
    fantasy5 = words2.sample(sentence2_len5).map(&:inspect).join(' ')
    
    @ipsum2 = fantasy_caps1 + " " + fantasy1.delete('"') + ". " + fantasy_caps2 + " " + fantasy2.delete('"') + ". " + fantasy_caps3 + " " + fantasy3.delete('"') + ". "  + fantasy_caps4 + " " + fantasy4.delete('"') + ". "  + fantasy_caps5 + " " + fantasy5.delete('"') + "."
    
    naturecaps1 = capital_words3.sample
    naturecaps2 = capital_words3.sample
    naturecaps3 = capital_words3.sample
    naturecaps4 = capital_words3.sample
    naturecaps5 = capital_words3.sample
    
    sentence3_len1 = rand(5...30)
    nature1 = words3.sample(sentence3_len1).map(&:inspect).join(' ')
    sentence3_len2 = rand(5...30)
    nature2 = words3.sample(sentence3_len2).map(&:inspect).join(' ')
    sentence3_len3 = rand(5...30)
    nature3 = words3.sample(sentence3_len3).map(&:inspect).join(' ')
    sentence3_len4 = rand(5...30)
    nature4 = words3.sample(sentence3_len4).map(&:inspect).join(' ')
    sentence3_len5 = rand(5...30)
    nature5 = words3.sample(sentence3_len5).map(&:inspect).join(' ')
    
    @ipsum3 = naturecaps1 + " " + nature1.delete('"') + ". " + naturecaps2 + " " + nature2.delete('"') + ". " + naturecaps3 + " " + nature3.delete('"') + ". " + naturecaps4 + " " + nature4.delete('"') + ". " + naturecaps5 + " " + nature5.delete('"') + "."
    
	  apoccaps1 = capital_words4.sample
    apoccaps2 = capital_words4.sample
    apoccaps3 = capital_words4.sample
    apoccaps4 = capital_words4.sample
    apoccaps5 = capital_words4.sample
    
    sentence4_len1 = rand(5...30)
    apoc1 = words4.sample(sentence4_len1).map(&:inspect).join(' ')
    sentence4_len2 = rand(5...30)
    apoc2 = words4.sample(sentence4_len2).map(&:inspect).join(' ')
    sentence4_len3 = rand(5...30)
    apoc3 = words4.sample(sentence4_len3).map(&:inspect).join(' ')
    sentence4_len4 = rand(5...30)
    apoc4 = words4.sample(sentence4_len4).map(&:inspect).join(' ')
    sentence4_len5 = rand(5...30)
    apoc5 = words4.sample(sentence4_len5).map(&:inspect).join(' ')
    
    @ipsum4 = apoccaps1 + " " + apoc1.delete('"') + ". " + apoccaps2 + " " + apoc2.delete('"') + ". " + apoccaps3 + " " + apoc3.delete('"') + ". " + apoccaps4 + " " + apoc4.delete('"') + ". " + apoccaps5 + " " + apoc5.delete('"') + "."
    
    horrcaps1 = capital_words5.sample
    horrcaps2 = capital_words5.sample
    horrcaps3 = capital_words5.sample
    horrcaps4 = capital_words5.sample
    horrcaps5 = capital_words5.sample
    
    sentence5_len1 = rand(5...30)
    horr1 = words5.sample(sentence5_len1).map(&:inspect).join(' ')
    sentence5_len2 = rand(5...30)
    horr2 = words5.sample(sentence5_len2).map(&:inspect).join(' ')
    sentence5_len3 = rand(5...30)
    horr3 = words5.sample(sentence5_len3).map(&:inspect).join(' ')
    sentence5_len4 = rand(5...30)
    horr4 = words5.sample(sentence5_len4).map(&:inspect).join(' ')
    sentence5_len5 = rand(5...30)
    horr5 = words5.sample(sentence5_len5).map(&:inspect).join(' ')
    
    @ipsum5 = horrcaps1 + " " + horr1.delete('"') + ". " + horrcaps2 + " " + horr2.delete('"') + ". " + horrcaps3 + " " + horr3.delete('"') + ". " + horrcaps4 + " " + horr4.delete('"') + ". " + horrcaps5 + " " + horr5.delete('"') + "."
    
  
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
      "G.", "Gabe", "Gabriel", "Garrett", "Gary", "Gavin", "Gene", "Geoff", "Geoffrey", "George", "Gerald", "Geraldo", 
      "Glen", "Gordon", "Grant", "Greg", "Grover",
      "H.", "Hal", "Hank", "Harlon", "Harrison", "Harvey", "Hawk", "Henry", "Higgins", "Holden", "Hubert", "Hugh", "Hugo", "Hunter",
      "I.", "Ian", "Iggy", "Irving", "Iver", 
      "J.", "Jace", "Jack", "Jackson", "Jacob", "Jaden", "Jake", "James", "Jared", "Jason", "Jasper", "Jean-Claude", 
      "Jeff", "Jeffrey", "Jeremiah", "Jeremy", 
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
      "D.", "Daisy", "Dani", "Danielle", "Daphne", "Darby", "Darcy", "Darla", "Deb", "Debbie", "Deborah", "Dee", "Delilah", 
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
      "M.", "Macy", "Maggie", "Masie", "Marcy", "Margaret", "Margo", "Maria", "Mariah", "Marigold", "Martha", "Martina", "Mary", "Maurine", "May", 
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
      "Robin", "Rochelle", "Roquelle", "Rosa", "Rose", "Rowen", "Ruby", "Rumor",
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