module Nature
    extend ActiveSupport::Concern
    
    def nature 
      capital_words3 = [
        "Alpine", "Arctic", "Basin", "Bay", "Bracken", "Bush", "Canopy", "Canyon", "Cavern", 
        "Cliff face", "Creek", 
        "Crevasse", "Deposit", 
        "Desert", "Dewdrops", "Estuary", "Evergreen", "Fjord", "Flower", "Forest", 
        "Frond", "Fungus", "Glacier", 
        "Granite", "Gulf", "Gully", "Habitat", "Harbor", "Hill", "Honeycomb", "Icycle", "Island", "Jungle", "Knoll",
        "Lake", "Maple", "Marble", "Marsh", "Meadow", "Mist", "Mountain", "Nest", "Nightfall", "Obsidian", 
        "Ocean", "Outback", 
        "Peak", 
        "Plains", "Pond", "Powder", "Rainfall", "Ridge", "River", "Sand", "Sea", "Shoal", "Sill", "Swamp", 
        "Tornado", "Treetops", "Tropical",
        "Tundra", "Wilderness"
      ]
        
      words3 = [
        "acclivity", "afternoon", "alcove", "algae", "alkali", "alp", "anchorage", "anthill", "apex", 
        "aquifer", "archipelago", "arm",
        "arroyo", "ascent", "ash", "atoll", "avalanche", "bank", "bar", "bark", "barrens", "bayou", "beach", "beck",
        "bedrock", "beehive", "bight", "billow", "blizzard", "blossom", "bluff", 
        "bog", "boscage", "bottoms", "boulder", 
        "brake", "brambles", "branch", "brash", "break",
        "breeze", "briar", "bridge", "brook", "brow", "brume", "brush", "bud", "butte", "cave", "cay", "ceiling",
        "chaparral", "chill", "chinook", "cirrus", "climb", "cloudburst", "cloudcover", "clouds", "clover", "cluster", "coal",
        "cobblestone", "cocoon", "comet", "conifer", "continent", "cope", 
        "coppice", "copse", "coral", "cotton", "course", "cove",
        "crag", "crest", "crevice", "crust", "culvert", "cumulus", "current", 
        "cyclone", "daisies", "dawn", "deluge", "depression", "dew", "dimness", "dirt", "ditch", "dome",
        "downpour", 
        "drain", "draw", "drift", "driftwood", 
        "drizzle", "droplet", "dune", "dust devil", "earth", "earthquake", "eclipse",
        "eddy", "elevation", "eminence", "enclave", "eruption", "esker", "evening", "eventide", "everglade", 
        "falling star", "fauna", "fell", "fen", "fern", 
        "film", "firth", "flakes", "flats", "flock", "flood", "floor",
        "flora", "floret", "flow", "floweret", "flurry", "fog", "foliage", "freshet", "frost", "fruit", 
        "fumes", "galaxy",
        "gale",
        "garden", "glade", "glen", "gloaming", "gloom", "gold", "gradient", "gravel", "grit", "grove", "gust", "hail", 
        "half-light", "hardwood", "haven", "haze", "headland", "heap", 
        "heat", "heath",
        "height", "herb", "herd", "highland", "hillock", "hilltop", "hinterland", "hive", "hole", "hollow", 
        "honey", "hummock", "hurricane",
        "ice", "iceberg", "inclination", "incline", "inlet", "isle",
        "knuckle", "ladybug", "lagoon", "land", "landslide", "lava", "lea", "leaves", "ledge", "lightning", "loam", 
        "loch", "lodge", "lowland",
        "marshlands", "maze", "mesa",
        "mesquite", "metal", "meteor", "mineral", "mire", "mistral", "monsoon", "moon", "moonlight", "moors", "morass", "morning", "moss", 
        "mound", "mouth", "muck", "mud", "mudslide", "murk",
        "mushrooms", "narrows", "natural", "nebula", "nettles", "night", "oak", 
        "oasis", "ore",
        "outcropping", "overcast", "overgrowth", "overhang", "palisade", "pasture", "peat", "pebble", "peninsula", "perennials",
        "permafrost", "pike", "pine cone", "pines", "pit",
        "plant", "point", "polar", "posy", "pother", "precipice", "precipitation", "prominence", "promontory", "protuberance", "pulp",
        "quag", "quagmire", "quake", "quarry", "quicksand", "race", "rain",
        "range", "rays",
        "reef", "refuge", "retreat", "rill", "rindle", "rise", "riverbed", "rivulet", 
        "rock", "rock face", "rockslide", "roof", "rubble", "run", "runnel", "rush", "sage", "sagebrush", "sahara", 
        "salt", "sanctuary", 
        "sandbar", "sap", "sapling", "savannah", "scarp", "scree", "scud", "scum",
        "sediment", "seedling", "seeds",
        "shade tree", "sheer", "shelf", "shelter", "shoot", "shooting star", "shower", "shrubbery", "sierra", 
        "skerry", "slab", "slag", "sleet", "slope", "slough", 
        "slush", "smoke", "snow", 
        "snowdrift", "soil", "sound", "spark", "spate", "spike", "spray", "spring", "sprinkle", "spritz", "spur", 
        "squall", "stack", "stalagmite", "stalagtite", "stalk", "starlight", "stars", "steam", "steppe", 
        "storm", "strait", "stump", "summer", "summit", "sump", 
        "sun", "sundown", 
        "sunrise", "surf", "swarm", "swelter", "talus", "tangle", "tempest",
        "thicket", "thorn", "thorns",
        "thunder",
        "thunderclap", "thundercloud", "thunderhead", "tidal wave", "tide", "timber", "tip", "topiary", "tor",
        "torrent", "trees", "tremor", "tributary", "trunk", "tumbleweed", 
        "tunnel", "twilight", "twister", 
        "typhoon", "underbrush", "undercurrent", "undergrowth", "undertow", "upland", 
        "vapor", "vegetation", "veldt", "Venus", "vertex", "vine", 
        "volcano", "waddy", "wall", "wash", "wasteland",
        "water", "watercourse", "waterway", "waves", "weald", "web", "weeds", "wetlands", "wharf", 
        "whirlwind", 
        "wild", "willow", 
        "wind", "windstorm", "winter", "woodland", "woods"
      ]
        
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
      
      @nature_ipsum = naturecaps1 + " " + nature1.delete('"') + ". " + naturecaps2 + " " + nature2.delete('"') + ". " + naturecaps3 + " " + nature3.delete('"') + ". " + naturecaps4 + " " + nature4.delete('"') + ". " + naturecaps5 + " " + nature5.delete('"') + "."
      
    end
  
end