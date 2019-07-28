module Horror
    extend ActiveSupport::Concern
    
    def horror
        capital_words5 = [
          "Are there any spirits here who wish to communicate with us", 
          "Bodily fluids", "Car won't start", "Check the basement", "Clown", "Corpse", "Danger", "Dark", "Deceased", 
          "Dimly lit", "Eaten", "Evil", "Fear", "Full moon",
          "Go find out what that noise was",
          "Graveyard", "Halloween", "Hearse", "He always seemed so normal", "Hell", 
          "Hide in the closet", "Hostel", 
          "I'll be right back", "It's the quiet ones you gotta watch", "Killer", 
          "Let's split up", "Lure", "Maggots", 
          "Manhunt", "Midnight", "Morgue", "Mutilated", "Odor", "Pain", "Panic", "Paranormal", "Phobia", 
          "Phone lines are down", "Remains", 
          "Satan", "Scream", 
          "Serial killer", "Shallow grave", "Should stop here for the night", 
          "Silver bullet", "Skull", "Something in the attic", 
          "Stranger", "Terror", "The house needs cleansed", "Toe tag", "Undertaker", "Victim", "Vulnerable", 
          "We don't have any service out here", "We need to collect a sample"
          ]
          
        words5 = [
          "13", "abandoned", "abduction", "abused", "acid", "accursed", "adopted", "after dark", "after hours", "alarm", 
          "Alfred Hitchcock", "Alien", "aliens", "alleyway", "alligators", 
          "alone", "altar", "ambulance", "American Horror Story", "ammo", "ammunition", "amnesia",
          "amputation", "anal cavity",
          "angel", "angled", "antisocial", "apparition", "artery", "asleep", "asylum", "attacker", "attic", "attorney", "audible", "augur", 
          "avalanche", "awakened", "axe",
          "back roads", "backwoods", "bad luck", "bad moon", "bang", "banish", "barking", "basement", "bathtub", "bats", 
          "battered", "beaten", "bears", 
          "beast", "begging", "behavior", "beheaded", "belly-up",
          "bible", "bigfoot", "bitten", "black light", "Black Mirror", "bled", "bleeding", "blessing", "blink", "blizzard", "blood", 
          "blood-thirsty", "bloody", 
          "bludgeon", "boathouse", "body", "boiled", "boiler room", "bones", "bonesaw", "boogeyman", "boonies", "boots", "bound", 
          "brains", 
          "Bram Stoker", "breath", "bribe", "broken neck", "bruised", "bugs", "bump", "burial", "burial ground", "buried alive", "butcher",
          "cabin", "cage", "candle", "cannibal", "captive", "capture", "carcus", "car jacking", "carnival", "carousel", "car stall", 
          "carving", "case", "casket", "castle", "cat", "catacombs", "cave", "cellar", "cemetery", "chains", "chainsaw", "chamber", 
          "charming", "chateau", "chatter", "check under the bed", "chemicals", "childhood", "chilling", "chills", "chloroform", 
          "choked", "chopping block", "chupacabra", "church", "circumstantial", "circus", 
          "circus tent", "clamor", "claustrophobic", "claws", "cleaners", "Clive Barker", "cloak", "closet", "cockroach", "coed", "coffin", "coma", 
          "concrete", "confined", "consumed", "control",
          "contusion", "convict", "conviction", "coroner", "corridor", "cough", "court",
          "coven", "cowl", "crawl space", "crazy", "criminal",
          "crawly", "creaking", "creature", "creepy", "cremation", "crime scene", "crone", "crucifix", "crutches", 
          "Cthulhu", "cult", "curfew", "curse",
          "cut",
          "darkness", "dead", "death", "decay", "decomposition", "delight", "demon", "dentist", "deputy", 
          "derailed", "deserted", "destiny", "details", 
          "detective", "devil", "devilry",
          "digested", "diner", "dirt road", "disappear", "disaster",
          "disconcerted", "disease", "disembodied",
          "disembowel", "disfigured", "disguise", "dismember", "DNA", "doctor", "doll", "dollhouse", "Dracula", "dragged", "dreams", 
          "dried blood", "drill", "driver", "drowned",
          "drowning", "drug", "duct tape", "dump", "dungeon", "Edgar Allan Poe", 
          "electric chair", "electrocuted", "Eli Roth", "Elm Street", "embalming fluid", "emotional", "engorged", "entrails", "erratic", "escaped", "estate",
          "ether", "evade", "evidence", "examine", "execution", "exorcism", "exorcist", 
          "experiment", "eyelids", "eye patch", "eyes",
          "fangs", "FBI", "feeding", "feds", "femur", "festering", "fetid", "filth", "fingernail", "fingerprints", "fire", "fireplace", 
          "firing squad", "flashlight", "flat tire", "flesh", "flicker", "flies", 
          "foaming", "fog",
          "followed", "footprints", "fortune teller", "foster care", "foster home", "frail", "Frankenstein's monster", "freak", 
          "freakshow", "Freddy Krueger",
          "Friday the 13th", "frightening", "froth", "frozen", 
          "fugitive", "fumes", "funeral", "furnace",
          "gagged", "gargoyle", "gas", "gas chamber", "gasoline", "gasp", "gas station", "genitals", 
          "George Romero", "ghost", "ghoul", "gnaw", 
          "goosebumps", "gooseflesh", "gorged", "Gothic",
          "government", "gratification", "gravestone", "graveyard", 
          "graveyard shift", "grim reaper",
          "groaning", "Guillermo Del Toro", "guns", "gunshot", "gut feeling", "guts", "gutted", "gypsy",
          "hag","Halloween", "handcuffs", "hanged", "harlot", "harrowing", "hatchet", "haunted", "hazard", "headstone", "heart", "heartbeat", 
          "hell", "hellhound", "hellscape", "help",
          "hemorrhage", "hex", "hidden", "highway",
          "hitchhiker", "hive", "holy water", "hood", "hook", "hooker", "horror", "horrorshow", "hospital", 
          "hostile", "hovel", "howling", "H.P. Lovecraft", "hunger", "hunted", "hunter", "hurt",
          "identify", "identity", "ignition", "ill-fated", "ill-meaning", "inbred", "incantation", "incinerate", "incubus",
          "inheritance", "insane", "insects", "insomnia",
          "internment", "intestines", "intruder", "intuition", "investigation",
          "jack-in-the-box", "jail cell", "Jason Voorhees", "James Wan", "jaws", "jogger", 
          "John Carpenter", "jolted", "journalist", "judge", "jump", "jump start", "jury", "jutting",
          "kidnapping", "killed", "knife", 
          "laboratory", "lair", "lake", "lamb", "landfill", "lashed", "law", "leech", "leprechaun", 
          "lethal injection", "light", "lightning", "Lilith", 
          "lipstick", "liver", "Living Dead", "Lizzie Borden", "locked", "lock-up", "locusts", "lost", "lotion", "lucid",
          "Lucifer", "lunatic", "lurking", "lynching",
          "machete", "maintenance crew", "manor", "mansion", "marionette", "marshall", "Mary Shelley", "mascara", "mask", "mass grave", "maul", "maw", "meat hook", "medical examiner", 
          "medium", "mess", "methodical", "Michael Myers", "middle of nowhere", "mill", "mirror", "mist",
          "moaning", "modus operandi", "moist", "molested", "monster", "moon", "moonlight", "mortuary", "most wanted", "motel", "moth",
          "muffled", "mummifed", "murder", "murder weapon", "music box", "mysterious",
          "neck", "needle", "neighborhood watch", "nerve-wracking", "nervous", "news", "newspaper", "nibble", "night", 
          "nightmare", "night watchman", "noose", "Nosferatu",
          "nostrils", "note", "nurse",
          "occult", "officer", "old", "omen", "oozing", "opened up the gates of hell", "open water", "operation", "oracle", "organ harvester", "organs", 
          "orphanage", "Ouija board", 
          "outhouse", "overdose", "overpowered",
          "Pagan", "painting", "palm reading", "panel van", "panic room", "paralysis", "paramedic", "paranoia", "parking garage", 
          "passageway", "passed away", "pattern",
          "pentagram", "petrified", "phantom", "pinched",
          "plane crash", "plea bargain", "pleading", "pleasure", "pliers", "plot", "poisoned", 
          "policeman", "poltergeist", "portal to another dimension", "possessed", "pounce", "powerless",
          "power outage", "prayer", "precognition", "pregnant", "premonition", "priest", "prison", "private investigator", 
          "profiler", "prophesy", "prostitute", 
          "psychic", "psychiatric hospital", "psycho", "psychologist", "pulp", "pump", "puppets", "pursued", "pyre",
          "quiet", "quivering",
          "rabies", "raid", "rain", "rancid", "ransom", "rasping", "rattling", "rats", "recruited", "reek", "reflection", "regurgitated", 
          "removed",
          "rest area", "restless", "revenge", "Richard Matheson", "rickety", "rite", "ritual", "Rod Serling",
          "rope", "rot", "rubber gloves",
          "sacrifice", "saint", "sarcophagus", "Satanic", "scalp", "scarred", "scary", "scratching", "scrubs", "scythe", 
          "seance", "search party", "seizure", "semen", "serrated", "severed", "sewer", "sewn shut", "shadows", "shambling", "shapeshifter",
          "sharks", "shattered", "shells", "shelter",
          "sheriff", "shipwreck", "Shirley Jackson", "shivering", "shock", "shrine", "shroud", "shudder", "shuffling", "sideshow", "sigh", "sighting",
          "silence", "six feet under", "sixth sense", "skeleton", "skeleton crew", "skin",
          "skinned alive", "slammed", "slasher", "slaughter", "sleep", "sleepless",
          "slenderman", "slimy", "smother", "smuggled", "snakes", "snout", "snowed in", "soil", "soiled",
          "sole survivor", "solved", "soul", "soundproof", "spacecraft", "spell", "spiders", "spinal fluid", "spirit", "splatter", 
          "spoiled", "spooky", "spray", "squallor", "stab", "stairs", "stalker", 
          "static", "statue", "steel", "stench", "Stephen King", "sting", "stitch", "storm", "storm drain", "straightjacket", "stranded", "strange",
          "stranger", "strangled", "street walker", "succubus", "suicide", "summer camp", "supernatural", "surveillance",
          "suspect", "swab", "swamp", "SWAT", "sweat", "swollen", "symbols", "syringe",
          "talons", "tapping", "tarot", "tattered", "taxicab", "teeth", "temple", "tentacles", "terrified", 
          "the car is stalled", "the government was experimenting", "the power of Christ compels you",
          "therapist", "throat", "thud", "thump", "Tobe Hooper", "tombstone", 
          "tooth", "town drunk", 
          "torture", "trafficking", "trailer", "trapped", "trash bags", "traumatized", "treachery", "tree branches", "trembling", "trenchcoat", 
          "trial", "trigger", "tripped and fell over a jutting tree root", "troll", "troubled", "truck stop",
          "trunk", "tunnel", "Twilight Zone", "twins", "twisted", "twitch",
          "UFO", "unconscious", "underground", "unknown", "unsolved", "unusual", "urn",
          "vacation", "vampire", "van", "veins", "vengeful spirit", "venom", "violated", "virgin", "visions", "voodoo", 
          "voodoo doll", "wailing", "The Walking Dead",
          "ward", "warning", "warts", "weeping", "weird", "wendigo", 
          "we're going to have to walk the rest of the way", "werewolf", "Wes Craven", "wheelchair", "wheezing", "whimper", "wilderness", "wilted", "wind", 
          "wind-up monkey", "witch", "witchcraft", 
          "witch doctor", "withered", "witness", "wolves", "woods", "woodshed", "worms", "wreck", "wrong turn",
          "zombie"
          ]
        
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
        
        @horror_ipsum = horrcaps1 + " " + horr1.delete('"') + ". " + horrcaps2 + " " + horr2.delete('"') + ". " + horrcaps3 + " " + horr3.delete('"') + ". " + horrcaps4 + " " + horr4.delete('"') + ". " + horrcaps5 + " " + horr5.delete('"') + "."
        
    end
  
end