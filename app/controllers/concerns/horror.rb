module Horror
    extend ActiveSupport::Concern
    
    def horror
          
        words5 = [
          "13", "abandoned", "abduction", "abused", "acid", "accursed", "adopted", "after dark", "after hours", "alarm", 
          "Alfred Hitchcock", "alien", "aliens", "alleyway", "alligators", 
          "alone", "altar", "ambulance", "American Horror Story", "ammo", "ammunition", "amnesia",
          "amputation", "anal cavity",
          "angel", "angled", "antisocial", "apparition", "are there any spirits here who wish to communicate with us", "artery", 
          "asleep", "asylum", "attacker", "attic", "attorney", "audible", "augur", "autopsy",
          "avalanche", "awakened", "axe", "axe murderer",
          "back roads", "backwoods", "bad luck", "bad moon", "bang", "banish", "barking", "basement", "bathtub", "bats", 
          "battered", "beaten", "bears", 
          "beast", "begging", "behavior", "beheaded", "belly-up",
          "bible", "bigfoot", "bitten", "black light", "Black Mirror", "bled", "bleeding", "blessing", "blink", "blizzard", "blood", 
          "blood-thirsty", "bloody", 
          "bludgeon", "boathouse", "bodily fluids", "body", "boiled", "boiler room", "bones", "bonesaw", "boogeyman", "boonies", "boots", "bound", 
          "brains", 
          "Bram Stoker", "breath", "bribe", "broken neck", "bruised", "bugs", "bump", "burial", "burial ground", "buried alive", "butcher",
          "cabin", "cage", "candle", "cannibal", "captive", "capture", "carcus", "car jacking", "carnival", "carousel", "car stall", 
          "carving", "the goddamn car won't start", "case", "casket", "castle", "cat", "catacombs", "cave", "cellar", "cemetery", "chains", "chainsaw", "chamber", 
          "charming", "chateau", "chatter", "check the basement", "check under the bed", "chemicals", "childhood", "chilling", "chills", "chloroform", 
          "choked", "chopping block", "chupacabra", "church", "circumstantial", "circus", 
          "circus tent", "clamor", "claustrophobic", "claws", "cleaners", "Clive Barker", "cloak", "closet", 
          "clowns", "cockroach", "coed", "coffin", "coma", 
          "concrete", "confined", "consumed", "control",
          "contusion", "convict", "conviction", "coroner", "corpse", "corridor", "cough", "court",
          "coven", "cowl", "crawl space", "crazy", "criminal",
          "crawly", "creaking", "creature", "creepy", "cremation", "crime scene", "crone", "cross", "crucifix", "crutches", 
          "Cthulhu", "cult", "curfew", "curse",
          "cut",
          "danger", "dark", "darkness", "dead", "death", "decay", "deceased", "decomposition", "delight", "demon", "dentist", "deputy", 
          "derailed", "deserted", "destiny", "details", 
          "detective", "devil", "devilry",
          "digested", "dimly lit", "diner", "dirt road", "disappear", "disaster",
          "disconcerted", "disease", "disembodied",
          "disembowel", "disfigured", "disguise", "dismember", "DNA", "doctor", "doll", "dollhouse", "Dracula", "dragged", "dreams", 
          "dried blood", "drill", "dripping", "driver", "drowned",
          "drowning", "drug", "duct tape", "dump", "dungeon", 
          "eaten", "Edgar Allan Poe", 
          "electric chair", "electrocuted", "Eli Roth", "Elm Street", "embalming fluid", "emotional", "engorged", "entrails", "erratic", "escaped", "estate",
          "ether", "evade", "evidence", "evil", "examine", "execution", "exorcism", "exorcist", 
          "experiment", "eyelids", "eye patch", "eyes",
          "fangs", "FBI", "fear", "feeding", "feds", "femur", "festering", "fetid", "filth", "fingernail", "fingerprints", "fire", "fireplace", 
          "firing squad", "flashlight", "flat tire", "flesh", "flicker", "flies", 
          "foaming", "fog",
          "followed", "footprints", "fortune teller", "foster care", "foster home", "frail", "Frankenstein's monster", "freak", 
          "freakshow", "Freddy Krueger",
          "Friday the 13th", "frightening", "froth", "frozen", 
          "fugitive", "full moon", "fumes", "funeral", "furnace",
          "gagged", "gargoyle", "gas", "gas chamber", "gasoline", "gasp", "gas station", "genitals", 
          "George Romero", "ghost", "ghoul", "gnaw", "go find out what that noise was",
          "goosebumps", "gooseflesh", "gorged", "Gothic",
          "government", "gratification", "gravestone", "graveyard", 
          "graveyard shift", "grim reaper",
          "groaning", "Guillermo Del Toro", "guns", "gunshot", "gut feeling", "guts", "gutted", "gypsy",
          "hag","Halloween", "handcuffs", "hanged", "harlot", "harrowing", "hatchet", "haunted", "hazard", "headstone", 
          "he always seemed so normal", "hearse", "heart", "heartbeat", 
          "hell", "hellhound", "hellscape", "help",
          "hemorrhage", "hex", "hidden", "hide in the closet", "highway",
          "hitchhiker", "hive", "holy water", "hood", "hook", "hooker", "horror", "horrorshow", "hospital", "hostel",
          "hostile", "the house needs to be cleansed", "hovel", "howling", "H.P. Lovecraft", "hunger", "hunted", "hunter", "hurt",
          "identify", "identity", "ignition", "ill-fated", "I'll be right back, I promise",
          "I'll just go and check on that noise", "ill-meaning", "inbred", "incantation", "incinerate", "incubus",
          "inheritance", "insane", "inscription", "insects", "insomnia",
          "internment", "intestines", "intruder", "intuition", "investigation", "it can't be killed with conventional weapons",
          "it's the quiet ones you gotta watch",
          "jack-in-the-box", "jail cell", "Jason Voorhees", "James Wan", "jaws", "jogger", 
          "John Carpenter", "jolted", "journalist", "judge", "jump", "jump start", "jury", "jutting",
          "kidnapping", "killed", "knife", 
          "laboratory", "lair", "lake", "lamb", "landfill", "lashed", "Latin", "law", "leech", "leprechaun", 
          "lethal injection", "let's split up", "light", "lightning", "Lilith", 
          "lipstick", "liver", "Living Dead", "Lizzie Borden", "locked", "lock-up", "locusts", "lost", "lotion", "lucid",
          "Lucifer", "lunatic", "lure", "lurking", "lynching",
          "machete", "maggots", "maintenance crew", "manhunt", "manor", "mansion", "marionette", "marshall", "Mary Shelley", "mascara", "mask", "mass grave", "maul", "maw", "meat hook", "medical examiner", 
          "medium", "mess", "methodical", "Michael Myers", "middle of nowhere", "midnight", "mill", "mirror", "mist",
          "moaning", "modus operandi", "moist", "molested", "monster", "moon", "moonlight", "morgue", "mortuary", "most wanted", "motel", "moth",
          "muffled", "mummifed", "murder", "murder weapon", "music box", "mutilated", "mysterious",
          "neck", "needle", "neighborhood watch", "nerve-wracking", "nervous", "news", "newspaper", "nibble", "night", 
          "nightmares", "night terrors", "night watchman", "noose", "Nosferatu",
          "nostrils", "note", "nurse",
          "occult", "odor", "officer", "old", "omen", "oozing", "opened up the gates of hell", "open water", "operation", "oracle", "organ harvester", "organs", 
          "orphanage", "Ouija board", 
          "outhouse", "overdose", "overpowered",
          "Pagan", "pain", "painting", "palm reading", "panel van", "panic", "panic room", "paralysis", "paramedic", "paranoia", 
          "paranormal", "parking garage", 
          "passageway", "passed away", "pattern",
          "pentagram", "petrified", "phantom", "phobia", "phone lines are down", "pinched",
          "plane crash", "plea bargain", "pleading", "pleasure", "pliers", "plot", "poisoned", 
          "policeman", "poltergeist", "portal to another dimension", "possessed", "pounce", "powerless",
          "power outage", "prayer", "precognition", "pregnant", "premonition", "priest", "prison", "private investigator", 
          "profiler", "prophesy", "prostitute", 
          "psychic", "psychiatric hospital", "psycho", "psychologist", "pulp", "pump", "puppets", "pursued", "pyre",
          "quiet", "quivering",
          "rabies", "raid", "rain", "rancid", "ransom", "rasping", "rattling", "rats", "recruited", "reek", "reflection", "regurgitated", 
          "remains", "removed",
          "rest area", "restless", "revenge", "Richard Matheson", "rickety", "rite", "ritual", "Rod Serling",
          "rope", "rosary beads", "rot", "rubber gloves",
          "sacrifice", "saint", "sarcophagus", "Satan", "Satanic", "scalp", "scarred", "scary", "scraping sounds in the attic", "scratching", 
          "scream", "scrubs", "scythe", 
          "seance", "search party", "seizure", "semen", "serial killer", "serrated", "severed", "sewer", "sewn shut", "shadows", 
          "shallow grave", "shambling", "shapeshifter",
          "sharks", "shattered", "shells", "shelter",
          "sheriff", "shipwreck", "Shirley Jackson", "shivering", "shock", 
          "should probabaly stop here for the night", "shrine", "shroud", "shudder", "shuffling", "sideshow", "sigh", 
          "sign of the cross", "sighting",
          "silence", "silver bullet", "six feet under", "sixth sense", "skeleton", "skeleton crew", "skin",
          "skinned alive", "skull", "slammed", "slasher", "slaughter", "sleep", "sleep paralysis", "sleepless",
          "slenderman", "slimy", "smother", "smuggled", "snakes", "snout", "snowed in", "soil", "soiled",
          "sole survivor", "solved", "soul", "soundproof", "spacecraft", "spell", "spiders", "spinal fluid", "spirit", "splatter", 
          "spoiled", "spooky", "spray", "squallor", "stab", "stairs", "stalker", 
          "static", "statue", "steel", "stench", "Stephen King", "sting", "stitch", "storm", "storm drain", "straightjacket", "stranded", 
          "strange", "stranger", "strangled", "street walker", "succubus", "suicide", "summer camp", "supernatural", "surveillance",
          "suspect", "swab", "swamp", "SWAT", "sweat", "swollen", "symbols", "syringe",
          "talons", "tapping", "tarot", "tattered", "taxicab", "teeth", "temple", "tentacles", "terrified", "terror",
          "the car is stalled", "the government was experimenting", "the power of Christ compels you",
          "therapist", "throat", "thud", "thump", "Tobe Hooper", "toe tag", "tombstone", 
          "tooth", "town drunk", 
          "torture", "trafficking", "trailer", "trapped", "trash bags", "traumatized", "treachery", "tree branches", "trembling", "trenchcoat", 
          "trial", "trigger", "tripped and fell over a jutting tree root", "troll", "troubled", "truck stop",
          "trunk", "tunnel", "twilight", "Twilight Zone", "twins", "twisted", "twitch",
          "UFO", "unconscious", "underground", "undertaker", "unknown", "unsolved", "unusual", "urn",
          "vacation", "vampire", "van", "veins", "vengeful spirit", "venom", "ventriloquist doll", "victim", "vile", "violated", 
          "virgin", "visions", "voodoo", 
          "voodoo doll", "vulnerable", "wailing", "The Walking Dead",
          "ward", "warning", "warts", "we don't have any service all the way out here", "weeping", "weird", "we need to collect a sample", "wendigo", 
          "we're going to have to walk the rest of the way", "werewolf", "Wes Craven", "wheelchair", "wheezing", "whimper", "wilderness", "wilted", "wind", 
          "wind-up monkey", "witch", "witchcraft", 
          "witch doctor", "withered", "witness", "wolves", "woods", "woodshed", "worms", "wreck", "wrong turn",
          "zombie"
          ]
        
        horrcaps1 = words5.sample.capitalize
        horrcaps2 = words5.sample.capitalize
        horrcaps3 = words5.sample.capitalize
        horrcaps4 = words5.sample.capitalize
        horrcaps5 = words5.sample.capitalize
        
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
        
        @horror_ipsum = horrcaps1 + " " + horr1.delete('"') + ". " + horrcaps2 + " " + horr2.delete('"') + ". " + horrcaps3 + " " + horr3.delete('"') + ". " + horrcaps4 + " " + horr4.delete('"') + ". " + horrcaps5 + " " + horr5.delete('"') + "."
        
    end
  
end