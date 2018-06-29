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
      "ham radio", "hard hat", "hay", "heaven", "hell", "Hemi", "henhouse", "herd", "hick", "hillbilly", "hissy fit", "hogs", 
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
      "Adventure", "Alchemist", "Arcane", "Broadsword", "Castle", "Cleric", "Cloak", "Damsel", "Dragon", 
      "Duke", "Dwarf", "Elf", "Enchantress", "Faerie", "Guild", "Halfling", "Innkeep",
      "Jester", "King", "Knight", "Legion", "Lord", "Lore", "Mage", "Magic", "Mythical", "Necromancer", 
      "Oracle", "Paladin", "Potion", "Queen", "Relic", "Rune", "Scepter", "Sorcery", "Spell", "Sword", "Townsfolk", 
      "Unicorn", "Void", "Wizard", "Wraith"
      ]
      
    words2 = [
      "acolyte", "accursed", "acrobat", "Admiral", "aegis", "aeronaut", "aether", "affliction", "ale", "alleyway", "alloy", 
      "altar", "ambassador", "amber", "amulet", 
      "ancestral", "ancient", "angel", "ankh", "anvil", "apocalypse", 
      "archangel", "architect", "archive", "arena", "aristocracy", "armaments", "armor", "armorer", 
      "armory", "arrow", "arrowhead", "artesan", "artifact", "artifice",
      "assassin", "assault", "astral", "asylum", "atonement", "augur", "aura", "automaton", "avatar", "axe", "baker", 
      "band", "bandage", "bandit", "banner",
      "barbarian", "barber", "bard", "baron", "baroness", "barricade", "barrow", "barter", "basket", "bat", "battering ram", 
      "battle", "battlefield", "battlements", "bazaar", "bear", "beast", "beef",
      "beefeater", "beer", "beeswax", "beggar", "beguile", 
      "beheading", "behemoth", "belt", "berkserker", "bindings", "bishop", "blacksmith", "bladder",
      "blanket", "blasphemy", "blessing", "bloodletter", 
      "blood sausage", "boar", "boarding house", "boat", "bog", "bolt", "bones", "bone setter", "book",
      "boots", "boson", "bounty hunter", "bow", "bracelet", "bracer", "brawl", "brawler", "brazier", "bread", "breastplate", 
      "breech", "brew", "brigand", "bristle",
      "bronze", "brood", "broth", "brothel", "buckler", "bull", "butcher",
      "caltrips", "camp", "campfire", "candle", "candlestick",
      "cannibals", "cape",
      "Captain", "captive", "captor", "caravan",
      "cardinal", "cards", "carnival", "carriage", "cart", "castaway", "cat", "cat o' nine tails", "cataclysm",
      "catacombs", "catapult", "cathedral", "cattle", "cauldron", "causeway", "cavalier", "celestial", "cell", "ceremony",
      "chain mail", "chains", "chamber pot", "champion", "channeler", "chaos", "chapel", "charismatic", "charm", "chickens", 
      "chieftain", "chieftess",
      "chimera", "chimney", "chisel", "chivalry", "choir", "chopping block", 
      "Chosen One", "city", "clairvoyant", "clan", "claw", "cleaver", "clerk", "climb", "clinic", "clock tower", "cloth",
      "club", "coals", "coat", "coffin", "cog", "Colonel", "coin", "coinpurse", "commodore", "commoner", "Common Tongue", "companion", 
      "company", "compass", "conflagration", "conjurer", 
      "consecration", "constable", "contract", "contraption", "cook", "copper", "corridore", "corsair", "cot", "cottage", "count", 
      "countess", "cough", "county", "coup",
      "court", "courtesan", "courtier", 
      "coven", "covenant", "cow", "cowl", "cream", "creature", "crest",
      "crone", "crossbow", "crow", "crow's nest", "crown", "crucible", "crusade", "crystal", "cup", "curse", "cutthroat", "cyclops", "daemon", "dagger", 
      "dancer", "dark", "darkness", "defend", "deity", "demigod", "demon", "den", "desecration", 
      "dethrone", "devil", "dice", "diplomacy", "diplomat",
      "dire wolf", "dirk", "disguise", 
      "divine", "diviner", "doctor", "doctrine", "dowager", "dowery",
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
      "gaelor", "galleon", "gallows", "gambler", "games", "garb", "gargoyle", "garrote", "garter", "gates", "gateway", "gauntlet", "gear", "gelding", 
      "gemstone", "General", "ghost", "ghoul", 
      "giant", "giant spider", "gibbet", "glaive", "glass", "glory", "glyph", 
      "gnome", "goat's milk",
      "goblet", "goblin", "gods", "goddess", "gold",
      "golom", "gorgon", "grail", "gravedigger", "grave robber", "graveyard", "gremlin", "grieves", "griffon", 
      "grinding wheel", "guard", "guardian", "guard tower", "guest",
      "guide", "guissarme",
      "gypsy", "hag", "halberd", "ham", "hamlet", "hammer", "hangman", "harbinger", "harp", "harvest", "hatchet", "hatchling", 
      "healer", "hearth", "heir", "helm", "helmsman", "herald", "herbalist", "heresy", "hermit", "hero", "heroic", "heroine", "hexer", 
      "hide", "highborn",
      "highwayman", "hilt", "history", "hoard", "hogs", "honor", "hood", "horn", "horse", "horseman", "host", "hound", "hourglass", "hubris",
      "huntsman", "hut", "icon", "illusionist", "imp", "infantry", "illness", "infiltrator", "ink", "inn", "inquisitor", "interim", 
      "interrogation", "invisibility", "iron", "javelin", "jeweler", "jewels",
      "joust", "judge",
      "justice", "keel", "keelhauling", "key", "kindling", "kingdom", "knapsack", "knife", "knighthood", "knot", "kraken", "labyrinth", "Lady", 
      "lair", "lamp", "lance", "lancet", "lantern", "lash", "law",
      "leather", "leech", "legend", "leprechaun", "levitate", "Lieutenant", "lich", "light", "lighthouse", "linament", 
      "livery", "lock", "lockpick", "lodestar", "longbow", 
      "loot", "lowborn", "lumberjack", "lunar",
      "lurker", "lute", "lycanthrope", "lyre", 
      "mace", "magician", "magistrate", "magus",
      "maiden", "mainsail", "manservant", "mantle", "map", "mare", "marionette", "market", "marksman", "martyr", "mask",
      "mast", "master", "mausoleum", 
      "mayor", "maze", "mead", "medic", 
      "medicine", "melee", "mercenary", "merchant", "mermaid",
      "merrymaking", "messenger", "milkmaid", "mime", "miner", "minotaur", 
      "minstrel", "mirror", "mirth", "mischief", "mist", "moat", "monacle", "monarch", "monk", 
      "mount", "mule", "mysterious", "nails", "nanny", 
      "navigation", "necklace",
      "needle", "negotiation", "nephilim", "newt", "nightcap", "nightmare", "noble", "nock", "nomad", "noose", "nun", "nunnery", "nymph", 
      "oarsman", "obsidian", "occultist", 
      "ogre", "ointment", "oligarchy", "onyx", "opal", "opaline", "orb", "orc", "ore", "orphanage", "outsider", "oven", "overthrow", "ox cart", "oxen", "pack", "parapet", "party",
      "peasant", "peg", "penny", "petticoat", "phantom", "philosopher", "pickaxe", "pie", "pike", "pious", "pipe tobacco", "piper", 
      "pirate", "pitch", "pitchfork", "plague", "plague doctor", "plane", 
      "plate mail", "platoon", "pocket", "poet",
      "poison", "polearm", "politics", "pony", "pork", "portal", 
      "portcullis", "powder", "powers", "predator", "priest", "priestess", "prince", "princess", 
      "prison", "proclamation", "prophesy", "property",
      "protection", "protector", "psychic", "pulpit", "pup", "puppeteer", "pyre", "pyromancer", "quest", "quill", "quiver", "raft",
      "rags", "raid", "raider", "rail", "rampart", "ranger", "rapier",
      "raven", "raze", "razor", "realm", "reanimate", "rebellion", "redemption", "regency", "regeneration", "regent", 
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
      "spellcaster", "spike", "spire", "spirit", "spoon", "spy", "spyglass", "squadron", "squire", "stable", "staff", "stallion", "statue", "steed", "steel",
      "steeple", "stew", "stirrups",
      "storyteller", "stowaway", "studded leather", "summoner", "swashbuckler", "swindler", "swine", "tablet", "tallow",
      "talons", "tanner", "tapestry",
      "tariff",
      "tavern", "tax collector", "teleportation", "temple", "tent", "territory", "the rack", "thief", "thread", "throne", "tinder", 
      "tinkerer", "toga", "tomb", "tome", "top sail", "torch", 
      "torture chamber", "totem", 
      "tournament", "tower", "trade", "translator", "translucent",
      "transmutation", "trap", "trap door", "trapper", "traveler", "trebuchet", "treason", "treasure", "tribe", "troll", "trousers", 
      "trumpets", "trunk",
      "tumbler", "turnkey", "tusk", "tyranny", "undead", "undertaker", "uprising", "urn", "usurper",
      "valient", "Valkyrie", "vampire", "veil", "vengeance", 
      "venom", "vestments", "vial", "vicar", "vigilant", "vigor", "village", "virgin", "vision", "voulge", "vow", "wager",
      "wagon", "waistcoat", "wall", "wand", "ward", "wares", "warhammer", "warlock", "warlord", "war machine", "warrior", "watchman", "weaver", "wedding", "well",
      "werewolf", "wetnurse", "wheel", "whetstone", "whip", "wicked", "wicker", "widow", "widower", "wight", "winch", "windmill", "wine", 
      "wine skin", "winged", "witch", "wolfpack", "wool", "wormwood", "woven", "writ", "wyrm", "yarn", "yoke"
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
      "breeze", "bridge", "brook", "brow", "brush", "bud", "bush", "butte", "cave", "cavern",
      "chaparral", "chill", "chinook", "cliff", "climb", "cloudburst", "clouds", "clover", "cluster", "coal",
      "cobblestone", "cocoon", "conifer", "continent", "cope", 
      "coppice", "copse", "coral", 
      "crag", "crest", "crevasse", "crevice", "crust", "culvert", "current", 
      "cyclone", "dawn", "deluge", "depression", "dew", "dirt", "dome",
      "downpour", 
      "drain", "draw", "driftwood", 
      "drizzle", "droplet", "dune", "dust devil", "earth", "earthquake", "eclipse",
      "eddy", "elevation", "eminence", "eruption", "esker", "estuary", "evening", "eventide", "everglade", "evergreen", "fauna", "fell", "fen", "fern", 
      "fjord", "flakes", "flock", "flood", 
      "flora", "floret", "flower", "floweret", "flurry", "fog", "foliage", "frost", "fruit", "fumes", "gale",
      "garden", 
      "glacier", "glade", "glen", "gloaming", "gold", "gradient", "gravel", "grit", "grove", "gully", "gust", "hail", 
      "half-light", "hardwood", "haze", "headland", "heap", 
      "heat", "heath",
      "height", "herb", "herd", "highland", "hillock", "hilltop", "hinterland", "hive", "hole", "hollow", "hummock", "hurricane",
      "ice", "icycle", "inclination", "incline", "inlet", "isle",
      "knoll", "knuckle", "lagoon", "land", "landslide", "lava", "lea", "leaves", "lightning", "loch", "lodge", "lowland", "maple",
      "marshlands", "maze", "mesa",
      "mesquite", "metal", "mineral", "mire", "mist", "mistral", "monsoon", "moon", "moonlight", "moors", "morass", "morning", "moss", 
      "mound", "mouth", "mud", "mudslide", 
      "mushrooms", "nettles", "night", "nightfall", "oak", 
      "oasis", "ore",
      "outback", "overgrowth", "overhang", "palisade", "pasture", "peat", "pebble", "peninsula", "perennials",
      "permafrost", "pike", "pine cone", "pines", "pit",
      "plant", "point", "posy", "precipice", "precipitation", "prominence", "promontory", "protuberance", "pulp",
      "quag", "quagmire", "quake", "quarry", "quicksand", "rain", "rainfall",
      "range", "rays",
      "reef", "rise", "riverbed", "rivulet", 
      "rock", "rock face", "rockslide", "roof", "rubble", "sahara", "sand", "sap", "sapling", "savannah", "scarp", 
      "sediment", "seedling", "seeds",
      "shade tree", "sheer", "shelf", "shoot", "shower", "shrubbery", "sierra", "skree", "slab", "slag", "sleet", "slope", "slough", 
      "slush", "smoke", "snow", 
      "snowdrift", "spark", "spate", "spike", "spray", "spring", "sprinkle", "spur", 
      "squall", "stack", "starlight", "stars", "steppe", "storm", "stump", "summer", "summit", "sump", "sun", "sundown", 
      "sunrise", "surf", "swarm", "swelter", "talus", "tangle", "tempest",
      "thicket", "thorn", 
      "thunder",
      "thunderclap", "tidal wave", "tide", "timber", "tip", "topiary", "tor",
      "tornado", "torrent", "trees", "tremor", "tropical", "trunk", "tumbleweed", "twilight", "twister", 
      "typhoon", "underbrush", "undercurrent", "undergrowth", "undertow", "upland", "vegetation", "veldt", "vertex", "vine", 
      "volcano", "waddy", "wash", "wasteland",
      "water", "waves", "weald", "web", "weeds", "wetlands", "whirlwind", "wild", "wilderness", "willow", 
      "wind", "windstorm", "winter", "woodland", "woods"
      ]
      
	capital_words4 = [
      "Apocalypse", "Atlanta", "Contagion", "Epidemic", "Outbreak", "Pandemic", "Plague", "Quarantine", "Soldiers", "Virus"
      ]
      
    words4 = [
      "abandoned", "airwaves", "ammunition", "amputation", "antibiotics", "armageddon", "asteroid", "atomic", "axe", "axe handle",
      "backpack", "barter", "baseball bat", "biohazard", "bottled water", "bunker", "burial site", "burning",
      "cache", "camp", "campfire", "campsite", "candles", "canned goods", "cannibals", "canning", "capture", "cars", "carcass", 
      "catastrophe", "cataclysm", "CDC", "checkpoint", "civilization", "climate", "clinic", 
      "coffin", "collapse", "collision", "community", "cook", "corpse", "countdown", "crowbar", "crows",
      "dagger", "dead", "death", "destruction", "disease", "divine retribution", "doctor", "dog", "doomed", "downfall", "dynamite",
      "earthquakes", "electricity", "endangered species", "end of days", "end of the world", "end times", 
      "engineer", "every man for himself", "explosives", "extinction",
      "fallout", "fallout shelter", "famine", "FEMA camp", "field dressing", "fire", "firearms", "fishing", "fission", 
      "flames", "flashlight", "food", "forage",
      "four horsemen", "frontier", "fuel", "fusion",
      "garden", "gas mask", "gasoline", "gather", "generator", "genetic mutation", "global", "global warming", 
      "gravesite", "grid", "gunpowder", "guns", "gutted",
      "hatchet", "hell on earth", "helmet", "hideaway", "hockey stick", "horse", "hospital", "hotwire", "humanity", "hunting", "hurricanes",
      "ice age", "iodine", 
      "judgment", "junk",
      "kill or be killed", "knife",
      "lamp", "light", "lighter", "live off the land",
      "Mad Max", "magazine", "marksman", "mass graves", "matches", "medic", "medicine", "mercenary", "meteor shower", "MRE", "mutant",
      "NATO", "navigate", "negotiation", "non-perishables", "nuclear", "nurse",
      "outdoorsman",
      "painkillers", "party", "peanut butter", "pillage", "pistol", "plague", "planting", "poison", "prepper", "quiet",
      "radiation", "radiation suit", "radio", "raid", "raiders", "ransack", "rations", "ravagers", "rebuild", 
      "renegade", "rescue", "respirator", "resources", "resupply", "rifle", "rotting", 
      "rounds", "rovers",
      "salvage", "savage", "sawed-off", "scavenge", "scientists", "scrap", "shallow grave", "shells", 
      "shelter", "shotgun", "sinners", "siphon", "skin", "slavers", 
      "sneak", "sniper", "solar flare", "supplies", "survival",
      "starvation", "stash", "stitch", "storms", "suture",
      "sword", "syringe", 
      "tent", "tidal wave", "tinker", "together", "tracker", "trade", "transmission", "trapping", "travel", "tripwire", "truck", "tuna",
      "undead", "unmarked grave", 
      "vaccine", "vault", "vegetation", "vehicle", "ventilation", "veteran", "vulture",
      "walker", "war", "warrior", "wasteland", "water", "wild", "wilderness", "wound",
      "zombie"
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
    
	apoccaps1 = capital_words4.sample
    apoccaps2 = capital_words4.sample
    apoccaps3 = capital_words4.sample
    
    sentence4_len1 = rand(5...30)
    apoc1 = words4.sample(sentence4_len1).map(&:inspect).join(' ')
    sentence4_len2 = rand(5...30)
    apoc2 = words4.sample(sentence4_len2).map(&:inspect).join(' ')
    sentence4_len3 = rand(5...30)
    apoc3 = words4.sample(sentence4_len3).map(&:inspect).join(' ')
    
    @ipsum4 = apoccaps1 + " " + apoc1.delete('"') + ". " + apoccaps2 + " " + apoc2.delete('"') + ". " + apoccaps3 + " " + apoc3.delete('"') + "." 
  
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