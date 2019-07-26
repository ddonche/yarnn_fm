class IpsumsController < ApplicationController
  def show
  end
  
  def apocalypse
    capital_words4 = [
      "Apocalypse", "Atlanta", "Atomic", "Batteries", "Biohazard", "Bottled water", "Bug-out bag", 
      "Bullets", "Bunker", "Canned food", "Contagion", "Diesel", 
      "Disease", "Doomsday",
      "Double-barrel", "Emergency", "Epidemic", 
      "End times", "Extinction", "Fallout", "Filter",
      "Fuel", "Gas mask", "Gasoline", "Gear", "Gunpowder", "Hospital", "Humanity", "Iron sights", 
      "Junkyard", "Kit", 
      "Loadout", "Mag", "Mutation", "Nuclear",
      "Outbreak", "Pandemic", "Plague", "Radiation", "Repair", "Retrofitted", "Rifle", "Quarantine", 
      "Scavenge", "Scrap",
      "Shotgun", "Soldiers", "Supplies", "Virus", "Zombie"
    ]
      
    words4 = [
      "12 Monkeys", "28 Days", "9mm", "12-gauge", "abandoned", "A Boy and His Dog", "airwaves", "alcohol", 
      "aluminum stove", "ammo", "ammo can", 
      "ammunition", "amputation", "antenna", "antibiotics", "antidote", "armageddon", "armor-piercing", "army",
      "arrows", "assembly", "asteroid", "atmosphere", "ATV", "axe", "axe handle",
      "backpack", "barb wire", "barricade", "barter", "baseball bat with barbed wire", "beard", "binoculars", "blankets", "blockade",
      "body armor", "bolt-action", "bombs", "The Book of Eli", "boots", 
      "bow and arrow", "breech loader", "buckshot", "bulletproof", "burial site", "burning", "burn pit",
      "cache", "caliber", "camo", "camouflage", "camp", "campfire", "campsite", "candles", "cannibals", "canning", 
      "canteen", "capture", "cars", "carcass", "cartridge",
      "catastrophe", "cataclysm", "cauterize", "CB radio", "CDC", "chainsaw", "chamber", "charcoal", 
      "charger", "checkpoint", "chlorine", "civilization", "climate", "clinic", "coat",
      "coffin", "collapse", "collision", "community", "compass", "convoy", "cook", "cordon", "corpse", "countdown", "crossbow", "crowbar", 
      "crows",
      "dagger", "damage", "dead", "death", "destruction", "detonate", "distilled", "divine retribution", "doctor", "dog", 
      "doomed", "downfall", "dust cover", "dynamite",
      "earthquakes", "electricity", "endangered species", "end of days", "end of the world", 
      "engineer", "E-tool", "everyday carry", "every man for himself", 
      "everyone you know is dead", "explosives", "Falling Skies", "fallout shelter", 
      "famine", "FEMA camp", "field dressing", "fire", "firearms", 
      "firing pin", "first aid kit", "fishing", "fission", "flak jacket",
      "flames", "flare gun", "flashlight", "food", "forage", "fortified", "fortress",
      "four horsemen", "frontier", "full metal jacket", "fusion",
      "garden", "gather", "generator", "genetic mutation", "global", "global warming", 
      "gravesite", "grenade", "grid", "guns", "gutted", "hacksaw", "hammer", "hand-crank", "hat",
      "hatchet", "headlamp", "hell on earth", "helmet", "hideaway", "hockey stick", "hollow-point", "horse", "hotwire", 
      "humvee", "hunting", "hurricanes", "hygiene",
      "I Am Legend", "ice age", "incendiary", "iodine",
      "jack", "jacket", "Jericho", "JP-8", "Jeep", "Jeremiah", "judgment", "jumper cables", "junk",
      "kill or be killed", "knife",
      "lamp", "landmines", "lantern", "The Last of Us", "leather", "Leatherman", "lever action", "light", "lighter", "live off the land",
      "living dead", "looters",
      "Mad Max", "magazine", "magnum", "map", "marksman", "mass graves", "matches", "medic", "medical supplies", "medicine", 
      "mercenary", "meteor shower", "Metro 2033", "military", "MRE", "mutant",
      "NATO", "navigate", "negotiation", "non-perishables", "no one was ready for this", "nurse", "NVGs", "nylon",
      "oil", "Omega Man", "outdoorsman",
      "painkillers", "paracord", "party", "patient zero", "peanut butter", "pillage", "pistol", 
      "Planet of the Apes", "planting", "plate carrier", "pliers", "poison", "pollution", 
      "potassium", "prepper","propane", "provisions", "pump",
      "pump-action", "purified water", "quiet", "radiation suit", "radio", "raid", "raiders", "ranger", "ransack", "rations", 
      "ravagers", "rebuild", "reckoning", "reinforced",
      "renegade", "rescue", "respirator", "resources", "resupply", "rimfire", "rope", "rotting", 
      "rounds", "rovers", "rucksack",
      "salt", "salvage", "savage", "saw", "sawed-off", "scientists", "screwdriver", "scripture", "shallow grave", "shells", 
      "shelter", "shovel", "shrapnel", "sick", "sickness", "silencer", "sinners", "siphon", "sirens", "skin", "slavers", 
      "slingshot", "smoke",
      "sneak", "sniper", "solar flare", "solar panel", "Soylent Green", "spigot", "survival", "The Stand",
      "starvation", "starving", "stash", "stitch", "storms", "stranded", "straps", "suture", "SUV",
      "sword", "syringe", 
      "tank", "tanto", "tent", "Terminator", "test subject", "the end is nigh", "the government isn't going to save us", 
      "this is the reckoning", "tidal wave", "tinker", "tire iron", "together", "tools", 
      "tracker", "trade", "transmission", "transmitter", "trapping", 
      "travel", "tripwire", "truck", "tuna", "turn back", "two-way radio",
      "undead", "unmarked grave", "urban",
      "vaccine", "vault", "vegetation", "vehicle", "ventilation", "veteran", "vulture",
      "walker", "walkie-talkie", "wanderer", "war", "warrior", "wasteland", "water", 
      "water bag", "Waterworld", "we'll all starve to death if we don't find food", "whetstone", "wild", "wilderness", "wire", "wound", "wrench",
      "you have to shoot them in the head"
    ]
    
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
    
    @apocalypsum = apoccaps1 + " " + apoc1.delete('"') + ". " + apoccaps2 + " " + apoc2.delete('"') + ". " + apoccaps3 + " " + apoc3.delete('"') + ". " + apoccaps4 + " " + apoc4.delete('"') + ". " + apoccaps5 + " " + apoc5.delete('"') + "."
  
  end
  
  def fantasy
    capital_words2 = [
      "Adventure", "Alchemist", "Amulet", "Apprentice", "Arcane", "Armor", "Broadsword", "Castle", 
      "Champion", "Cleric", "Cloak", "Damsel", "Dragon", "Druid",
      "Duke", "Dwarf", "Elf", "Enchantress", "Faerie", "Foe", "Forest", "Guild", "Halfling", "Innkeep",
      "Jester", "King", "Knight", "Legion", "Lord", "Lore", "Mage", "Magic", "Mythical", "Necromancer", 
      "Oracle", "Paladin", "Potion", "Queen", "Relic", "Rune", "Scepter", 
      "Shire", "Sorcery", "Spell", "Sword", "Townsfolk", 
      "Unicorn", "Void", "Warlock", "Warrior", "Wizard", "Wraith"
      ]
      
    words2 = [
      "abbot", "acolyte", "accursed", "acrobat", "Admiral", "aegis", "aeronaut", "aether", "affliction", "ale", "alleyway", "alloy", 
      "altar", "ambassador", "amber", 
      "ancestral", "ancient", "angel", "ankh", "anvil", "apocalypse", "arbalest",
      "archangel", "architect", "archive", "arena", "aristocracy", "armaments", "armorer", 
      "armory", "arrow", "arrowhead", "artesan", "Arthur", "artillator", "artifact", "artifice", "Asgard",
      "assassin", "assault", "assembly", "astral", "asylum", "Atlantis", "atonement", "augur", "aura", "automaton", 
      "avatar", "axe", "Azeroth",
      "baker", "balrog",
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
      "caltrips", "Camelot", "camp", "campfire", "candle", "candlestick",
      "cannibals", "cape",
      "Captain", "captive", "captor", "caravan",
      "cardinal", "cards", "carnival", "carriage", "cart", "castaway", "cat", "cat o' nine tails", "cataclysm",
      "catacombs", "catapult", "cathedral", "cattle", "cauldron", "causeway", "cavalier", "cavalry", "celestial", "cell", "ceremony",
      "chain mail", "chains", "chamber pot", "chamfron", "channeler", "chaos", "chapel", "chariot", "charismatic", "charm", "chickens", 
      "chieftain", "chieftess",
      "chimera", "chimney", "chisel", "chivalry", "choir", "chopping block", 
      "Chosen One", "city", "clairvoyant", "clan", "claw", "cleaver", "clerk", "climb", "clinic", "clock tower", "cloth",
      "club", "coals", "coat", "coat of arms", "cobbler", "cobblestone", "coffin", "cog", "coif", "Colonel", "coin", "coinpurse", "commodore", "commoner", 
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
      "dragoon", "drawbridge", "dreadnought", "dress", "drifter", "drover", 
      "drummer", "dryad",
      "duchess", "duel", "Dumbledore", "dungeon", "Earthsea", "economy", "eggs", "elemental", "embargo", "emissary", "empath", "emerald", 
      "Emperor", "Empress", "enchantment", 
      "engineer", "enigma", "Ensign", "entrails", 
      "envoy", "escape", "escort", "espionage", "ethereal", "Everwind", "evil", 
      "evocation", "exalted", "Excalibur", "executioner", 
      "exorcism", "exorcist", "expedition", "fairy dust", "falconer", 
      "familiar", "fang", "Fantasia", "farmer", "fauchard", "feather", "fence", "fencing", "festival", "fey", "fighter", "fire", "firewood", 
      "fireplace", "fisherman", "fish hook", "fishmonger", "fishwife", "flag", 
      "flail", "flask", "fleet", "fletcher", "flint", "flog", "flute", "fly", "folk magic",
      "folk medicine", "forage", "foreigner", "forge", "fork", "fortifications", "fortress", "fortune teller", 
      "foundry", "fox", "fray",
      "friar", "Frodo", "funeral",
      "gaelor", "galleon", "gallows", "gambler", "games", "Gandalf", "garb", "gargoyle", "garrote", "garter", "Gary Gygax", "gates", 
      "gatehouse", "gateway", "gauntlet", "gear", "gelding", 
      "gemstone", "General", "ghost", "ghoul", 
      "giant", "giant spider", "gibbet", "glaive", "glass", "glory", "glyph", 
      "gnome", "goat's milk",
      "goblet", "goblin", "gods", "goddess", "gold",
      "golom", "gorgon", "grail", "gravedigger", "grave robber", "graveyard", "gremlin", "grieves", "griffon", 
      "grinding wheel", "guard", "guardian", "guard tower", "guest",
      "guide", "guissarme",
      "gypsy", "hag", "halberd", "ham", "hamlet", "hammer", "hangman", "harbinger", "harp", 
      "Harry Potter", "harvest", "hatchet", "hatchling", "hauberk",
      "healer", "hearth", "heir", "helm", "helmsman", "herald", "herbalist", "heresy", "hermit", "hero", "heroic", "heroine", "hexer", 
      "hide", "highborn",
      "highwayman", "hilt", "history", "hoard", "hogs", "Hogwarts", "honor", "hood", "horn", "horse", "horseman", "host", "hound", "hourglass", "hubris",
      "huntsman", "hut", "icon", "illusionist", "imp", "infantry", "illness", "infiltrator", "ink", "inn", "inquisitor", "interim", 
      "interrogation", "invisibility", "iron", "javelin", "jeweler", "jewels", "Jon Snow",
      "joust", "judge",
      "justice", "keel", "keelhauling", "keep", "key", "kindling", "kingdom", "Kingslayer", "knapsack", "knave", "knife", "knighthood", 
      "knot", "kraken", "Kvothe", "labyrinth", "Lady", 
      "lair", "lamellar", "lamp", "lance", "lancet", "Lannister", "lantern", "lash", "law",
      "leather", "leech", "legend", "leprechaun", "levitate", "Lieutenant", "lich", "light", "lighthouse", "linament", 
      "livery", "lock", "lockpick", "lodestar", "longbow", 
      "loot", "lowborn", "lumberjack", "lunar",
      "lurker", "lute", "lycanthrope", "lyre", 
      "mace", "machicolation", "magician", "magistrate", "magus",
      "maiden", "mainsail", "mangonel", "manservant", "mantle", "map", "mare", "marionette", "market", "marksman", "martyr", "mask",
      "mason", "mast", "master", "maul", "mausoleum", 
      "mayor", "maze", "mead", "medic", 
      "medicine", "melee", "mercenary", "merchant", "Merlin", "mermaid",
      "merrymaking", "messenger", "Middle Earth", "milkmaid", "mime", "miner", "minotaur", 
      "minstrel", "mirror", "mirth", "mischief", "mist", "Mistborn", "m'lady", "moat", "monacle", "monarch", "monk", "Mordor",
      "mount", "mule", "mummer", "murder holes", "mysterious", "nails", "nanny", "Narnia",
      "navigation", "necklace",
      "needle", "negotiation", "nephilim", "Neverland", "newt", "nightcap", "nightmare", 
      "Night's Watch", "noble", "nock", "nomad", "noose", "nun", "nunnery", "nymph", 
      "oarsman", "obsidian", "occultist", 
      "ogre", "ointment", "oligarchy", "onyx", "opal", "opaline", "orb", "orc", "ore", "orphanage", 
      "oubliette", "outsider", "oven", "overthrow", "ox cart", "oxen", "Oz", "pack", "parapet", "party", "passageway",
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
      "rogue", "root", "rope", "Round Table", "royal", "royal seal", "ruby", "ruler", "saber", "saboteur", "sack", "sacrifice", "saddle", "sage", 
      "sailor", "salvage", "salt", "salt pork", "salve", "sanctuary", "sandals", "sapphire", "sarcophagus", "satchel", 
      "satyr", "Sauron", "savage", 
      "savant", "scabbard", "scaled", "scavenger", "scimitar", "scion", "scourge",
      "scout", "scribe", "scroll", 
      "scrying", "scullery", "scythe", "seance", "secret passageway", "seer", "seminary",
      "sentry", "serf", "servant", "sextant", "shackles", "shade", "shadow", "shaft",
      "shaman", "Shannara", "shapeshifter", "sheep", "shepherd", "shield", 
      "shieldmaiden", "shimmer", "ship", "shrine", "shroud", "sickle", "siege", "sigil", "silk", "silver", "Sir", "siren", "skeleton", "skinner", 
      "skirmish", "skull",
      "skyship", "slaughter", "slavery", "sling",
      "slippers", "slums", "smith", "smuggler", "snake oil", "soap", "soar", "solar", "soldier", "soothsayer", 
      "sorcerer", "soup", "sow", "spear", "specter", "spectral", "spellbook",
      "spellcaster", "spetum", "spike", "spinster", "spire", "spirit", "spoon", "spy", "spyglass", "squadron", "squire", 
      "stable", "staff", "stallion", "Stark", "statue", "steed", "steel",
      "steeple", "stew", "stirrups", "storm the castle", 
      "storyteller", "stowaway", "studded leather", "summoner", "surcoat", "swashbuckler", "swindler", "swine", "tabard", "tablet", "tallow",
      "talons", "tanner", "tapestry", "Targaryen",
      "tariff",
      "tavern", "tax collector", "teleportation", "temple", "tent", "territory", "Terry Brooks", "the rack", "thief", "thread", "throne", "tinder", 
      "tinkerer", "toga", "Tolkien", "tomb", "tome", "top sail", "torch", 
      "torture chamber", "totem", 
      "tournament", "tower", "trade", "translator", "translucent",
      "transmutation", "trap", "trap door", "trapper", "traveler", "trebuchet", "treason", "treasure", "trial", "tribe", "tribunal", "troll", 
      "troubadour", "trousers", 
      "trumpets", "trunk",
      "tumbler", "turnkey", "turret", "tusk", "tyranny", "Tyrion", "undead", "undertaker", "uprising", "urn", "usurper",
      "valient", "Valkyrie", "vampire", "veil", "vengeance", 
      "venom", "vestments", "vial", "vicar", "vigilant", "vigor", "village", "virgin", "vision", "Voldemort", "voulge", "vow", "wager",
      "wagon", "waistcoat", "wall", "wand", "ward", "wares", "warhammer", "warlord", "war machine",
      "watchman", "watchtower", "weaver", "wedding", "well",
      "werewolf", "Westeros", "wetnurse", "wheel", "Wheel of Time", "whetstone", "whip", "wicked", "wicker", "widow", "widower", "wight", "winch", "windmill", "wine", 
      "wine skin", "winged", "witch", "wolfpack", "Wonderland", "wool", "wormwood", "woven", "writ", "wyrm", "yarn", "yoke"
      ]
    
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
    
    @fantasy_ipsum = fantasy_caps1 + " " + fantasy1.delete('"') + ". " + fantasy_caps2 + " " + fantasy2.delete('"') + ". " + fantasy_caps3 + " " + fantasy3.delete('"') + ". "  + fantasy_caps4 + " " + fantasy4.delete('"') + ". "  + fantasy_caps5 + " " + fantasy5.delete('"') + "."
    
    tavern_first = [ "Abandoned", "Able", "Alabaster", "Amber", "Angry", "Anchored", "Ancient", "Arguing", 
      "Armored", "Asking", "Auburn", "Banded", "Bare", "Battered", "Beguilded", "Beholden", "Bewildered", "Big", 
      "Black", "Blaring", "Blazing", "Bleeding",
      "Blessed", "Blind", "Blue", "Blurry", "Blustery", "Boastful", "Boiling",
      "Boisterous", "Bony", "Braided", "Branded", "Brass", "Bratty", "Brave", "Brawling", "Brazen", "Brick", "Bright", 
      "Brindle", "Broken", "Bronze", "Brown", "Buried",
      "Burly", "Burning", "Burnt", "Busy", "Buxum", "Caged", "Captured", "Careless", "Caring",
      "Chaotic", "Charming", "Charred", "Cheap", "Chilly", "Chosen", "Clean", "Climbing", "Clinging", "Clothed", "Clumsy", 
      "Cluttered", "Cobblestone", "Cold", 
      "Common", "Cooking", "Copper", "Cotton", "Courageous", "Covered", "Cowardly", "Cracked", "Crafty", 
      "Craven", "Crazy", "Crisp", "Crawling", "Creeping", "Crooked", "Crouching", "Crowded", "Cruel", "Crumbling", "Crying", "Curly", "Cursed", 
      "Dancing", "Dandy", "Dark", 
      "Darkened", "Dastardly", "Dawn", "Dead", "Deadly", "Deaf", "Defiant", "Delightful", "Deserted", "Dim", "Dirty", "Dismal", "Drab", "Dragged", 
      "Drifting", "dropped the keys when you try to use them", "Drowned", "Drowning", "Drunken", 
      "Dry", "Dusky", "Dusty", "Dying", "Eccentric", "Eager", "Early", "Eighth", "Emerald", "Empty", "Enchanted", "Evil",
      "Faithful", "Fallen", "Falling", "Famous", "Fat", "Feathered", "Fifth", "Filthy", "First", 
      "Fleet", "Flying", "Forbidden", "Foreign", "Forgetful", "Forgotten", "Forsaken", "Fortunate", "Fourth", "Freckled", "Frail", "Frayed", 
      "Freezing", "Friendly", "Frothy", "Frozen", 
      "Full", "Gabby", "Galloping", "Gambling", "Gentle", "Giant", "Giddy", "Giggling", "Gilded", "Ginger", "Glass", "Golden", "Good", 
      "Graceful", "Greedy", "Green", 
      "Grey", "Grieving", "Groaning", "Grouchy", "Grumbling", "Haggling", "Half", "Handsome", "Happy",
      "Hateful", "Headless", "Heather", "Hidden", "Hiding", "Hissing", "Honorable", "Hooded", "Hopeful", "Hot", "Howling", "Hungry", "Husky", "Icy", "Idle", 
      "I'll just go and check on that noise", 
      "Inside", "Iron", "it can't be killed with conventional weapons", "Ivory", "Jade", "Jolly", "Joyous", "Jumping", 
      "Knocking", "Last", "Late", "Laughing", "Lazy",
      "Leaky", "Leather", "Lewd", "Listening", "Little", "lock all the doors", "Loitering", "Looking", "Loose", "Loping",
      "Lost", "Loud", "Lucky", "Lying", "Mad", "Marble", "Marching", "Mean", "Melancholy", "Merciful", "Metal", "Mirthful", "Miserly", "Misty", "Mobile", 
      "Moaning", "Moping", "Morning", "Muddy", "Muggy", "Murky", "Muttering", "Mysterious", 
      "Nagging", "Naked", "Needy", "New", "Ninth", "Noisy",
      "Old", "Onyx", "Opal", "Opaline", "Orange", "Orphaned", "Outside", "Painful", "Painted", "Paltry", "Parched", "Pearl", 
      "Pearly", "Penned", "Piddly", "Pink", "Pious", "Pitched", "Plain", "Poisoned", "Poor", "Powerful", 
      "Pretty", "Pulled", "Purple", "Putrid", "Quailing", "Questing", "Questioning", "Quiet", "Quivering", 
      "Ragged", "Ramshackle", "Rare", "Raw", "Rebellious", "Reborn", "Red", "R
      emembering", "Resting", "Restless", "Rich", "Roaming", "Roasted", 
      "Rock", "Rooted", "Rotten", "Rough",
      "Roving", "Rowdy", "Ruddy", "Rueful", "Running", "Rusted", "Rusty", "Sable", "Sad", "Sallow",
      "Sapphire", "Scared", "Scarlet", "Scarred", "Scented", "Screaming", "Second", "Seedy", "Seventh",
      "Shady", "Shaking", "Shaky", "Shallow", "Shifting", "Shifty", "Shimmering", "Shining", "Shivering", "Shrunken", "Sickly",
      "Sighing", "Silly", "Silver", "Sinful", "Sixth", "Skinny", "Skirted", "Sleeping", "Sleepy", "Slender",
      "Small", "Smelly", "Smirking", "Smoking", "Smoky", "Smooth", "Smug", "Sneaky", "Snowy", "Snug", "Soaring", "Soggy", 
      "Sold", "Sorrowful", "Speckled", 
      "Speedy", "Spinning", 
      "Spirited", "Spoiled", "Spying", "Stale", "Standing", "Starry",
      "Steamy", "Steel", "Stiff", "Still", "Stilted", "Stinging", "Stingy", "Stolen", "Stone", "Strange", "Striped", 
      "Strong", "Stumbling", "Stuttering", "Swarthy", "Swaying",
      "Swollen", "Tabby", "Tall", "Tan", "Tarred", "Tarrying", "Tasty", "Tattered", "Teal",
      "Tenth", "Testy", "Tethered", "Thin", "Third", "Thirsty", "Threadbare", "Thrown", "Tidy", "Tilted", "Tiny", 
      "Torn", "Traveling", "Treacherous", "Tricky", "Truthful", "Tumbling", "Twilight", "Ugly", "Undone", "Unlikely", 
      "Unlucky", "Vein", 
      "Violet", "Wailing", "Waking", "Walking", "Wandering", "Watchful", "Watching", "Wax",
      "Weak", "Wee", "Wet", "Whimsical", "Whispering", "White", "Wicked", "Wicker", "Winsome", "Wise", "Wishful", "Withered", "Wooden", 
      "Woven", "Yelling", "Yellow", "Young", "Youthful"
      ]
      
    tavern_second = [ "Abbot", "Admiral", "Altar", "Amulet", "Anchor", "Angel", "Antler", "Anvil", "Apple", "Apprentice", "Archer", 
      "Arrow", "Attic", "Aunt", 
      "Axe", "Badger",
      "Ball", "Banner", "Bard", "Barn", "Baron", "Baroness", "Barrel",
      "Bat", "Bean", "Bear", "Beard", "Bed", "Bee", "Beet", "Beggar",
      "Belly", "Bird", "Bishop", "Blade", "Boar", "Boat", "Bone", "Book", "Boot", 
      "Boulder", "Bounty", "Bow", "Boy", "Bracelet", "Braid", "Branch", "Breath", "Breed", "Broom", 
      "Bronco", "Brothel", "Brother", "Buckle", "Bugler", "Bull", 
      "Butterfly", "Button", "Cabbage", "Candle", 
      "Cap", "Cape", "Captain", "Card", "Cardinal", "Carriage", "Carrot", "Cart", "Casket", "Castle", "Cat", "Cathedral", 
      "Cauldron", "Cave",
      "Cellar", "Chair", "Chamber", "Chapel", "Charm", "Chicken", "Child", "Church", "Claw", "Cloak", "Clock", "Clover", "Clown", "Club", "Coal",
      "Coat", "Coattail", "Cobbler", "Cock", "Coffin", "Coin", "Company", "Compass", "Concubine", "Condor", "Coral", "Count", "Cove", "Cow", "Coward", 
      "Crane", "Crest", 
      "Crew", "Crock", "Crone",
      "Cross", "Crow", "Cup", "Curtain", "Dagger", "Damsel", "Dancer", "Daughter", "Deck", "Deer", "Delight", "Demon", "Den", "Diamond", "Dice",
      "Dish", "Dock", "Dog", "Donkey", "Doom", "Door", "Dove", "Dragon", "Dream", "Dress", 
      "Drifter", 
      "Druid", "Drum", "Drummer", "Dryad", "Duke", "Dunce", "Dungeon", "Dwarf", "Eagle", "Ear", "Earl", "Edge", "Eel", "Egg",
      "Elephant", "Elf", "Ember", "Emblem", "Eye", "Face", "Faerie", "Fang", "Farmer", "Father", "Feather", "Fencer",
      "Fern", "Fiddle", "Fighter", "Fin", "Finch", "Finger", "Fire", "Fish", 
      "Fisherman", "Flag", "Flame", "Flask", "Flower", "Flute", "Fly",
      "Fool", "Foot", "Forge", "Foreigner", "Fork", "Fortress", "Fortune", "Fox", "Frog",
      "Furnace", "Galleon", "Galley", "Gambler", "Gander", "Garden", "Gauntlet", "Gem", "General",
      "Ghost", "Ghoul", "Giant", "Girl", "Gizzard", "Glass", "Glove", "Gnome", "Goat", "Goblin", "Goose", "Gourd", 
      "Grave", "Guard", "Guest", "Hag", "Hammer", 
      "Hand", "Handle", "Hangman", "Harlot", 
      "Harness", "Harp", "Harpy", "Harvest", "Hasp", "Hat", "Hatter", "Hawk", "Heart", "Heel", 
      "Heifer", "Helm", "Helmsman", "Hen", "Hide", "Hill",
      "Hilt", "Hind", "Hitch", "Hog", "Hole", "Hollow", "Hood",
      "Hoof", "Hook", "Horn", "Hornet", "Horse", "Horseman", "Hound", "House", "Hovel", "Hunter", "Hut", "Inferno", "Ink", "Inkpot", "Jester", 
      "Jewel", "Jug", "Keel", "Key", 
      "King", "Kitchen", "Kitten", "Knave", "Knife", "Knight", "Knot",
      "Knuckle", "Kraken", "Lad", "Lady", "Lair", "Lake", "Lance", "Lane", "Lass", "Laugh", "Leaf",
      "Leaves", "Legion", "Letter", "Light", "Lightning", "Lion", "Lizard", "Lock", "Locust", "Lord", "Lover", "Lyre", "Mage", "Magician",
      "Maid", "Mare", "Mark", "Mason", "Mast", "Master", "Mate", "Melon", "Mercenary", "Merchant", "Mermaid", "Milk", 
      "Mime", "Minstrel", "Mitten", 
      "Monk", "Monkey", "Monster", "Moon", "Moor", "Moth",
      "Mother", "Mountain", "Mouth", "Mule", "Mummer", "Mutiny", "Mutt", "Nag", "Nail", "Necklace", 
      "Needle", "Nest", "Net", "Nettle", "Night", "Noose", "Nose", "Nut", "Oar", "Oat", "Omen", "Onion", "Oracle", "Orc", 
      "Orchard", "Orchid", "Oxen", "Pack", "Palm", "Patch", "Paw", "Pawn", "Peak", "Pearl", "Perch", "Philosopher", "Pier", "Pig", 
      "Pike", "Pillow", "Pint",
      "Pipe", "Piper", "Piranha", "Plate", "Pocket", "Pod", "Poison", "Pool", "Pond", "Pony", "Porch", "Port", "Porter", 
      "Pot", "Potion", "Powder", "Priest", 
      "Priestess", "Prince", "Princess", "Privateer", "Puddle", "Pup", "Pyre", "Python", 
      "Queen", "Quest", "Quill", "Quiver", "Rabbit", "Racer", "Rag", "Ram", "Raven", "Razor", "Rebel", "Revenge", "Reward", "Rider",
      "Ring", "River", "Road", "Robber", "Rock", "Rod", "Rogue", "Room", "Rooster", "Root", "Rope",
      "Rose", "Ruby", "Rumor", "Sack", "Saddle", "Sage",
      "Sail", "Sailor", "Saint", "Scale", "Scout", "Scribe", "Sea", "Seed", "Sentry",
      "Serpent", "Shade", "Shadow", "Shaman", "Shamrock", "Sheep", "Shelf", "Shell", "Shepherd", "Shield", "Ship", "Shoe", "Shovel", 
      "Shrine", "Sigil", "Singer", "Siren", "Sister",
      "Skeleton", "Skull", "Slipper", "Smoke", "Snake", "Sock", "Son", "Sorcerer", "Soldier", "Spade", "Sparrow", "Spear", "Spice", "Spoon", "Spring", "Spur",
      "Squid", "Squire", "Squirrel", "Staff", "Stag", "Stallion", "Stalk", "Stamp", "Star", "Statue", "Steed", "Stick", "Stitch", 
      "Stove", "Stranger", "Stump", "Sun", "Supper", "Swallow", "Swamp", "Swan", "Swine", "Sword", "Table", "Tail", 
      "Talon", "Tarpaulin", "Teat", "Tentacle",
      "Thief", "Thorn", "Thread", "Throne", "Thumb", "Thunder", "Tiger", "Titan", "Toad", "Toe", "Tomb", "Tome", "Tongue", 
      "Tooth", "Torch", "Tortoise", "Trader", 
      "Trapper", "Treader", "Tree", "Trident",
      "Troll", "Trophy", "Trout", 
      "Trumpet", "Trunk", "Tunic",
      "Turtle", "Uncle", "Unicorn", "Vicar", "Vision", "Voyage", "Vulture", "Wagon", "Waistcoat",
      "Warrior", "Wart", "Wasp", "Watchman", "Weed", "Well", "Wharf", "Wharg",
      "Wheel", "Whisper", "Whore", "Widow", "Widower", "Wife", "Willow", "Window", "Wing", "Wish", "Witch", "Wizard", 
      "Wolf", "Worm", "Wyrm", "Yard"
      ]
      
    tavern_third = [ "Alehouse", "Bar", "Boardinghouse", "Cask", "Cauldron", "Crossing", "Cupboard", "Drinkery", 
      "Hideaway", "Hole", "House", "Inn", "Inn and Keep", "Inn and Tavern", "Keg", "Meadhouse", "Mill", "Nest",
      "Nook", "Parlour", "Post", "Pub", "Roadhouse", "Saloon", "Taproom", "Tavern", "Trading Post"
      ]
      
    tav1_1 = tavern_first.sample
    tav1_2 = tavern_first.sample
    tav1_3 = tavern_first.sample
    tav1_4 = tavern_first.sample
    tav1_5 = tavern_first.sample
    tav2_1 = tavern_second.sample
    tav2_2 = tavern_second.sample
    tav2_3 = tavern_second.sample
    tav2_4 = tavern_second.sample
    tav2_5 = tavern_second.sample
    tav2_6 = tavern_second.sample
    tav2_7 = tavern_second.sample
    tav2_8 = tavern_second.sample
    tav2_9 = tavern_second.sample
    tav2_10 = tavern_second.sample
    tav2_11 = tavern_second.sample
    tav2_12 = tavern_second.sample
    tav3_1 = tavern_third.sample
    tav3_2 = tavern_third.sample
    
    @taverns = "The ".html_safe + tav1_1 + " " + tav2_1 + "<br>".html_safe + tav2_2 + " and " + tav2_3 + "<br>".html_safe + tav1_2 + " " + tav2_4 + " " + tav3_1 + "<br>".html_safe + "The " + tav2_5 + "'s" + " " + tav2_6 + "<br>".html_safe + "The ".html_safe + tav1_3 + " " + tav2_7 + "<br>".html_safe + tav2_8 + " and " + tav2_9 + "<br>".html_safe + tav1_4 + " " + tav2_10 + " " + tav3_2 + "<br>".html_safe + tav1_5 + " " + tav2_11 + "'s" + " " + tav2_12

  end
  
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
      "farm", "fence", "fiddle", "Firebird", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", "fixin", "fixin", "flag", "flatbed",
      "folks", "football", "Ford", "foreman", "Fox News", "frog", "front porch", "full metal jacket",
      "gambler", "gander", "garden", "gasoline", "gator", "gelding", "George Strait", "Georgia", 
      "gets my goose", "git", "glasspack", "Glock", 
      "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grizzly", "GTO Judge", "gumbo", "guns", 
      "gussied up", "gut",
      "ham radio", "hard hat", "hay", "hale bales", "heaven", "heifer", "hell", "Hemi", "henhouse", "herd", "hick", "hillbilly", 
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
  
  def scifi
    capital_words5 = [
      "Absolute zero", "Accelerometer", "Aperture", "Astronomy", "Atomic", "Big Bang", "Binary star", "Carbon", "Clone", "Density", 
      "Climatology", "Concave", "Convection", "Coronal mass ejection", "Cosmic rays", "Darwin", "Descent phase", "Device", "Diffraction",
      "Earth", "Electromagnetic", "Elliptical orbit", "Escape velocity", "Exobiology", "Extragalactic", "Filament", "Frequency",
      "Flux capacitor", "Gravity", "Gyroscope", "Heat shield", "Heliocentric", "Hydrocarbons", "Hyperbolic", 
      "Inflationary Universe", "Intergalactic", "Interstellar", "Isotope", "Jupiter", "K-band", "Kelvin", "Kilowatt", "Kuiper Belt", 
      "Lander", "Luminosity", "Mach", "Mars", "Matter", "Micron", "Microwave", "Near-earth asteroid", "Nitrogen", "Nova", "Optics",
      "Parallel Universe", "Pi", "Pixel", "Planets", "Photosynthesis", "Positron", "Probe", "Pulsar",
      "Quantum", "Quasar", "Red Giant", "Reflector", "Retrograde", "Rover", 
      "Sentient", "Solar storm", "Spectrometer", "Supernova", "Telemetry", "Theoretical", "Teleport", "Thrusters", "Titan",
      "Van Allen radiation belt", "Voyager", "Wavelength", "Worlds", "X-band"
    ]
      
    words5 = [
      "acceleration", "acid", "aerodynamic", "alchemy", "aliens", "alpha rays", "android", "Andromeda", "antigravity", "ansible", "armada", 
      "artificial intelligence", "asteroid", 
      "asteroid belt", "astrogate", "astrophysicist", "atmosphere", "atom", "avatar",  
      "base", "beam", "beings", "binomial", "biology", "biometrics", "black hole", "blasters", "booster", "bootstrap paradox", "Boyle",
      "bridge",
      "cannons", "captain", "catalyst", "celestial", "cells", "chemistry", "chromosomes", "Clarke", 
      "cloaking device", "cognition", "comet", 
      "collapsed star", "computer", "condenser", "continuum", "core", "corona", "cosmic", "critical mass", 
      "cryogenics", "cryo sleep", "cryostastis", "current", "cybernetics", "cyberspace", "cyborg",
      "dark matter", "deep space", "dimension", "diode", "dock", "Doppler", "drone", "DNA", "Dyson sphere",
      "eclipse", "Einstein", "electrons", "electronics", "engine", "entropy", 
      "equilibrium", "equinox", "ESP", "event horizon", "experiment", "extraterrestrials",  
      "Faraday Cage", "faster-than-light", "field", "first contact", "fission", "fleet", "force field", 
      "fossil record", "frequency", "friction", "fusion",
      "galaxy", "gamma rays", "gases", "Geiger counter", "Gemini", "generation ship", "genetic engineering", "genetics", "grandfather paradox",
      "hard drive", "helium", "helmet", "hive", "homeostasis", "homeworld", "hormones", 
      "humanoid", "humans", "hydrogen", "hyperdrive", "hyperspace", "hyperspeed", "hypothesis",
      "ignition", "inertia", "infinity", "infrared", "ionized", "ionosphere", "ions",
      "joule",
      "Kepler", "kinetic",
      "laboratory", "lasers", "launch pad", "light saber", "light speed", "light year", "lunar",
      "mad scientist", "magnetic", "mass", "meltdown", "Mercury", "meteorite", "microbe", "microscope", "Milky Way", "mitochondria", "module", 
      "momentum", "moon", "moon base", "motor", "multiverse",
      "nano", "nebula", "Neptune", "neutrino", "neutron", "Newton", "nuclear", "nucleus",
      "observatory", "ohm", "orbit", "ornithopter", "Orion", "oxygen",
      "parabola", "paradox", "parallax", "particles", "pH", "photons", "physics", "planetary", "plasma rifle", "Pluto", 
      "Plutonium", "precog", "prism", "propulsion",
      "quark",
      "radioactive", "rays", "reactor", "red planet", "limb regeneration", "relativity", "replicant", "retinal scanner", "ringworld", "robot", "rocket", 
      "satellite", "Saturn", "saucer", "science", "set phasers to stun", "shields", "signs of life", "singularity", "software", "solar flares",
      "solar system", "solstice", "sonar", "space", "spacecraft", "space station", "space suit", "space-time", "spectrum", "star system", "subatomic", "supersonic",
      "tectonic shift", "telepathy", "telescope", "terminal velocity", "terraform", 
      "thermodynamics", "thermostat", "timeline", "time travel", "titanium", "torpedo", "tractor beam", "transmission", "turbine", 
      "ultraviolet", "universe", "uranium", "Uranus", 
      "vaccine", "vacuum", "valence", "vector", "velocity", "Venus", "virus", "visitation", "volts", 
      "warhead", "warp drive", "wave number", "white dwarf", "wormhole", 
      "x-rays"
    ]
      
    scificaps1 = capital_words5.sample
    scificaps2 = capital_words5.sample
    scificaps3 = capital_words5.sample
    scificaps4 = capital_words5.sample
    scificaps5 = capital_words5.sample
    
    sentence5_len1 = rand(5...30)
    scifi1 = words5.sample(sentence5_len1).map(&:inspect).join(' ')
    sentence5_len2 = rand(5...30)
    scifi2 = words5.sample(sentence5_len2).map(&:inspect).join(' ')
    sentence5_len3 = rand(5...30)
    scifi3 = words5.sample(sentence5_len3).map(&:inspect).join(' ')
    sentence5_len4 = rand(5...30)
    scifi4 = words5.sample(sentence5_len4).map(&:inspect).join(' ')
    sentence5_len5 = rand(5...30)
    scifi5 = words5.sample(sentence5_len5).map(&:inspect).join(' ')
    
    @scifi_ipsum = scificaps1 + " " + scifi1.delete('"') + ". " + scificaps2 + " " + scifi2.delete('"') + ". " + scificaps3 + " " + scifi3.delete('"') + ". " + scificaps4 + " " + scifi4.delete('"') + ". " + scificaps5 + " " + scifi5.delete('"') + "."
    
  end

  def ipsum
  end
  
  def names
    male_first_names = [
      "A.", "Abe", "Abraham", "Adam", "Adolf", "Adolfo", "Adonis", "Adrian", "Aidan", "Al", "Albert", "Alan", "Alex", "Alfonso", "Alfred", 
      "Allister", "Alonzo", "Andrew", "Andy", 
      "Anson", "Anthony", "Antonio", 
      "Apollo", "Archer", "Archibald", "Archie", "Art", "Arthur", "August", "Augustus", "Austin",
      "B.", "Barney", "Barry", "Bart", "Bartholomew", "Barry", "Beau", "Ben", "Benjamin", "Benji", "Benny", "Benson", "Bert", "Bill", "Billy", "Bishop", 
      "Blake", "Blane", "Bo", "Bob", "Bobby", "Bohdy", "Brad", "Bradley", "Bradon", "Brady",
      "Bran", "Brandon", "Brent", "Bret", "Brian", "Brock", "Broderick", "Brody", 
      "Bruce", "Bruno", "Bryan", "Bryce", "Butch",
      "C.", "Caden", "Caesar", "Cam", "Cameron", "Carey", "Carl", "Casper", "Cecil", "Chance", "Charles", "Chase", "Chuck", "Claude", 
      "Claudius", "Clay", "Clayton", "Clifton", "Cliff", "Clive", "Colby", "Connor", "Cooper", "Cord", "Cordell", 
      "Cornelius", "Cort", 
      "Cory", "Courtney", "Crispin", "Curt", "Curtis",
      "D.", "Dade", "Dallas", "Dale", "Damarcus", "Damien", "Damon", "Dan", "Daniel", "Danny", "Darius", "Darrel", "Darren", 
      "Dave", "David", "Davis", "Dax", "Dean",
      "Delbert", "Dell", "Dennis", "Denny", "Desmond", "Devan", "Diego", "Dixon", "Dolf", "Don", "Donald", "Donaldo", "Doug", 
      "Douglas", "Drew", "Drake",
      "Dustin", "Dusty", "Duke", "Dutch",
      "E.", "Earl", "Ed", "Eddie", "Edgar", "Eduardo", "Edward", "Elias", "Elijah", "Ellis", "Elmer", "Elrod", "Elrond",
      "Elroy", "Elvis", "Ender", "Ennis", 
      "Ernie", "Ernest", "Ernesto", "Eugene", "Evan", "Everett", "Ezekiel", "Ezra",
      "F.", "Fabio", "Favian", "Felipe", "Ferdinand", "Fernando", "Francis", "Francisco", "Frank", "Franklin", "Fred", "Freddy",
      "G.", "Gabe", "Gabriel", "Garrett", "Gary", "Gavin", "Gaylord", "Gene", "Geoff", "Geoffrey", "George", "Gerald", "Geraldo", 
      "Gerard", "Glen", "Gordon", "Gordy", "Grant", "Greg", "Grover", "Guy",
      "H.", "Hal", "Hamlet", "Hank", "Harlon", "Harrison", "Harry", "Harvey", "Hawk", "Henry", "Herman", "Higgins", "Holden", 
      "Homer", "Horatio", "Howard", "Howie", "Huey",
      "Hubert", "Hugh", "Hugo", "Hunter",
      "I.", "Iago", "Ian", "Ignatio", "Iggy", "Irving", "Ivan", "Iver", 
      "J.", "Jace", "Jack", "Jackie", "Jackson", "Jacob", "Jaden", "Jake", "James", "Jacques", "Jared", "Jason", "Jasper", "Jean-Claude", 
      "Jeb", "Jebediah", "Jed", "Jedediah", "Jens", "Jeff", "Jefferson", "Jeffrey", "Jeremiah", "Jeremy", 
      "Jerry", "Jethro", "Jesus", "Jim", "Jimmy", "Johan", 
      "John", "Johnny", "Jordan", "Jordy", "Jorge", "Juan", "Julian", "Julio", "Julius", "July",
      "Justice", "Justin",
      "K.", "Kai", "Karl", "Keihl", "Keith", "Kell", "Keller", "Ken", "Kenneth", "Kenny", "Kurt", "Kyle", 
      "L.", "Ladamien", "Ladarius", "Lamont", "Lance", "Lane", "Larry", "Lawrence", "Lee", "Lenny", "Leo", "Leonard", "Leonardo", "Levi", 
      "Lewis", "Lex", "Liam", "Lionel", "Livius", "Logan", 
      "Lonn", "Lorin", 
      "Lou", "Louis", "Lucas", 
      "Luke", "Luther", "Lyle",
      "M.", "Marcus", "Mark", "Martin", "Marty", "Matt", "Matthew", "Max", "Maximilian", "Michael", "Mick", "Micky", 
      "Mitch", "Mitchell", "Mitt", "Mohammad", 
      "Morgan", "Muhammad",
      "N.", "Nate", "Nathan", "Newman", "Nicholas", "Nick", "Nigel", "Noel",
      "O.", "Odin", "Olaf", "Oliver", "Orion", "Orville", "Oscar", "Owen",
      "P.", "Paddy", "Paul", "Peregrine", "Perry", "Peter", "Phil", "Phillip", "Phineas", 
      "Phoenix", "Planter", "Potter", "Prescott", "Preston", "Prince",
      "Q.", "Quan", "Quincy", "Quin", "Quinn", "Quinton",
      "R.", "Rafe", "Rake", "Randall", "Randy", "Raphael", "Ray", "Rayburn", "Raylon", "Raymond", "Red", "Reed", "Reese", "Reg", 
      "Reggie", "Reginald", 
      "Rhett", "Rich", "Richard", 
      "Richie", "Rigel", "Rip", "River", 
      "Rob", "Robbie", "Robert", "Roberto", "Rod", "Roderick", "Rodney",
      "Rodrigo", "Roger", "Roland", "Ron", "Ronald", "Ronaldo", "Ronnie", "Roosevelt", "Rorian", 
      "Rory", "Ross", "Rudolf", "Rudolph", "Rufus", "Russ", "Russell", "Rusty", "Ryan", 
      "S.", "Sal", "Sam", "Sammy", "Samson", "Samuel", "Saul", "Sawyer", "Scott", "Seamus", "Sean", "Sebastian", "Seth", "Shane", 
      "Shannon", "Shaun", "Shawn", "Sherman",
      "Shooter", "Sonny", "Squire", "Stacey", "Stan", 
      "Stanley", "Stefan", "Stephan",
      "Stephen", "Sterling", "Steve", "Steven", "Stewart", 
      "Stuart", "Syd", "Sydney", "Sylvester",
      "T.", "Tay", "Taylor", "Ted", "Terrance", "Terry", "Thad", "Thadeus", "Theodore", "Tim", "Timothy", "Timmy", "Todd", "Tony", "Trace", "Travis", "Trent", 
      "Trenton", "Trevor", 
      "Trey", "Treyvon", "Trip", "Troy", "Tyler", "Tyrese", "Tyrone", "Tyson",
      "U.", "Ulf", "Ulfred", "Ulred", "Ulysses", "Uriah", "Uther", 
      "V.", "Van", "Vance", "Varro", "Vaughn", "Vince", "Vincent", "Vinny", 
      "W.", "Wade", "Walker", "Walt", "Walter", "Wayne", "Weston", "Will", "William", "Willis", "Willy", "Wilson", 
      "Woodrow", "Woody", "Wyatt", 
      "X.", "Xander", "Xavier", 
      "Y.", "Yaron", "York", "Yuri", "Yves",
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
      "Bernadette", "Bernadine", "Bernice", "Bertha", "Bess", "Bet", "Beth", "Bethany", "Betsy", "Betty", "Beverly", "Bianca", 
      "Bijou", "Birdie", "Blair", 
      "Blake", "Blakeley", "Blanche", "Blessing", "Bliss", "Blithe", "Blondie", "Blossom", "Blue", "Bo", "Bobbi", 
      "Bonnie", "Brandy", "Brea", "Brenda", 
      "Brianne", "Bridget", "Brienne", "Brin", "Briony", "Brit", "Britney", "Brittany", "Brooke", "Brooklyn",
      
      "C.", "Caitlin", "Candice", "Candi", "Cara", "Carey", "Carla", "Carly", "Carrie", "Carol", "Caroline", 
      "Cassidy", "Cat", "Catherine", 
      "Cathy", "Cecilia", 
      "Celeste", "Charity", "Charlene", 
      "Charlotte", "Chastity", "Cheryl",
      "Chevonne", "Chloe", "Cicilia", "Cicily", "Clarice", "Claudia", "Cora", "Coral", "Coraline", "Corey", "Corina",
      "Courtney", "Crystal", "Cynthia",
      "D.", "Daisy", "Dani", "Danielle", "Daphne", "Darby", "Darcy", "Darla", "Deb", "Debbie", "Deborah", "Dee", "Delaney", "Delilah", 
      "Denise", "Destiny", "Dolores", "Donna",
      "E.", "Eden", "Edith", "Eleanor", "Elena", "Elise", "Elizabeth", "Eloise", "Elowyn", "Emma", "Emerald", "Emogen", "Esme", "Esmerelda", "Eva", 
      "Eve", "Evelyn", "Ever", "Everly",
      "F.", "Fae", "Faith", "Fawn", "Fay", "Felicia", "Fiona", "Flo", "Florence", "Fran", "Francesca", 
      "G.", "Gabby", "Gabriella", "Gabrielle", "Gay", "Gayle", "Gena", "Genevieve", "Georgia", "Geraldine", "Ginger", "Glenda", "Gloria", "Glory", 
      "Grace", "Gretchen", "Gwyn", "Gwyndalyn", "Gwyneth", 
      "H.", "Hanna", "Hannah", "Hayley", "Hazel", "Helga", "Henrietta", "Hermione", "Holly", "Hope", "Hunter",
      "I.", "Imogen", "Ingrid", "Irene", "Ireland", "Irma", "Isabelle", "Ivy",
      "J.", "Jaime", "Jamie", "Janelle", "Janet", "Janice", "Janine", "January", "Jean", "Jen", "Jennifer", "Jenny", "Jude", "Judy", 
      "June", "Justine", 
      "K.", "Kacy", "Kat", "Kate", "Katherine", "Kay", "Kayla", "Kendall", "Kendra", "Kendyl", "Kim", "Kimberly", "Kylie",
      "L.", "Lacey", "Ladonna", "Lakeisha", "Lana", "Lauren", "Laurie", "Lavender", "Leah", "Leigh", "Lena", 
      "Lexi", "Leticia", "Liberty", "Linda", "Lisa", 
      "Lisbeth", "Lois",
      "Louise", "Lucy", "Luna", "Lynn", "Lynnette",
      "M.", "Macy", "Madonna", "Mae", "Maggie", "Masie", "Marcy", "Margaret", "Margo", "Maria", "Mariah", "Marigold", 
      "Martha", "Martina", "Mary", "Matilda",
      "Maude", "Maurine", "May", "Meg", "Megan",
      "Melania", "Melanie", "Melody", "Mercedes", 
      "Meredith",
      "Merrivale", "Mia", "Michaela", "Michelle",
      "Mila", "Mildred", "Milly", "Missy", "Misty",
      "Monica", "Monique", "Murielle", "Murietta", "Muse", "Musetta", "Mya",
      "N.", "Nadia", "Nadine", "Nancy", "Nelly", "Nettie", "Nina", "Noelle", "Nora", "Norine",
      "O.", "Oakley", "Octavia", "Odessa", "Odette", "Olga", "Olive", "Olivia", "Opal", "Oriana",
      "P.", "Pam", "Pamela", "Paris", "Patricia", "Patty", "Paula", "Paulene", "Paulette", "Penelope", "Penny", 
      "Phoebe", "Phoenix", "Pia", "Piper",
      "Q.",
      "R.", "Rachel", "Rae", "Rain", "Reagan", "Reba", "Rebecca", "Reece", "Renee", "Rhianna", "Rhiannon", "Rhonda", "Ripley", "Roberta", 
      "Robin", "Rochelle", "Roquelle", "Rosa", "Rose", "Rowen", "Ruby", "Rumor",
      
      "S.", "Sage", "Sally", "Sam", "Sammy", "Sandy", "Sarah", "Scarlett", "Shana", "Shannon", "Shauna", "Shawna", "Sherry", "Sheryl", "Sierra", "Skye", 
      "Skyler", "Snow", "Solest", "Stacey", "Starla", "Stella", "Steph", "Stephanie", "Sterling", "Stormy", "Summer", "Susan", 
      "Susanna", "Susie", "Sydney",
      
      "T.", "Tabby", "Tabitha", "Tamara", "Tammy", "Taylor", "Terri", "Theresa", "Tilda", "Tracey", "Trin", "Trinity", "Trudy",
      "U.", "Ulla", "Ulyanna", "Uma", "Ursula",
      "V.", "Velvet", "Vera", "Verona", "Veronica", "Vesper", "Vicki", "Victoria", "Violet", "Virgina",
      "W.", "Wanda", "Wendy", "Whisper", "Whitney", "Willa", "Willow", "Winter",
      "X.", 
      "Y.", "Yasmine", "Yolanda", "Yvonne", 
      "Z.", "Zara", "Zelda", "Zena", "Zoe", "Zora"
    ]
      
    surnames = [
      "Aberdine", "Abraham", "Abrams", "Acosta", "Adams", "Afton", "Agosti", "Aguado", "Ali", "Allen", "Almond", "Almondson", 
      "Amadori", "Amundsen", "Anders", "Anderson", "Anthony", "Anton", "Antonelli", "Antonis", "Aquino", "Archer", "Archilletta", "Armor", "Aslan",
      "Augustine", "Austin",
      "Bach", "Bachmann", "Bacon", "Bailey", "Baines", "Baker", "Bale", "Ball", "Ballard", "Barajas", "Barrett", "Barry",
      "Bass", "Bateman", "Bates", "Bautista", "Beaufort", "Beaumont", "Beck", "Becker", "Beckett", "Beckford", 
      "Belcher", "Bell", "Bellamy", "Belrose", "Benitez", "Bennett", "Benny", "Benson", "Berg", "Berger", "Bergman", "Berry", "Best", "Beyer", 
      "Black", "Blair", "Blake", "Bleaker", "Blue", "Bond", "Bonds", "Bonner", "Boone", 
      "Boot", "Bosch", 
      "Boyce", "Bradford", "Bradley", "Brand", "Branson", "Brant", "Brian", "Briar", "Britton", "Broderick", "Brook", "Brooks", "Brown", "Bruce", "Bruno", 
      "Bryant", "Bryce", "Buck", "Buckle", "Buckley", "Buckner", "Buhl", "Buhler",  "Bull", "Buller", "Burns", "Bush", "Butler", "Byers",
      "Caesar", "Cabrera", "Caesar", "Calahan", "Cameron", "Campano", "Campo", "Cannon", "Cap", "Caplin",
      "Cardiff", "Cardin", "Cardozo", "Carey", "Carl", "Carlen", "Carlisle", "Carlsbad", "Carlyle", 
      "Carmichael", "Carmody", "Carpenter", "Carrington", "Cartwright", "Carver", "Cary", 
      "Casper", "Cassidy", "Castillo", "Castle", "Castro", "Cavallo", "Cavendale", "Cedeno",
      "Chadwick", "Chaney", "Channing", "Chaplain", "Chapman", "Charles", "Chavez",
      "Chen", "Chester", "Chevalier", "Choi", "Christianson", "Christensen", "Christopher", "Clark", "Clay", "Clayton", "Cleary", 
      "Cleinder", "Clemens", "Clemenson",
      "Clement", "Cleveland", "Cliff", "Clifton", "Cline",
      "Cochran", "Coelho", "Cohen", "Coke", "Cole", "Coleman", "Colombo", "Conner", "Conners", "Connery", "Conrad", "Cook", "Cooper", "Copper",
      "Copperfield", "Cormier", "Cornell", "Costa", "Cox", "Cranston", "Crawfod", "Crisp", "Crispin", "Cross", 
      "Crow", "Crowley", "Cruz", "Cuesta", "Cullen", "Cut", 
      "Cutlip", "Cutter",
      "Dade", "D'Amore", "D'Angelo", "Daniels", "Danielson", "Dash", "Davenport", "Davers", "David", "Davidson", "Davis", "Deck", "Decker", "Dela Cruz", 
      "Delaney", "Dell", "Denton", "Denver", "Derrick", "Deruda", "de Silva", "Devin", "De Vito", "Diver", "Dix", "Dixon", "Doe", "Doherty", 
      "Domingo", "Dominguez", "Donario",
      "Donchesky", "Dove", "Dover", "Downing", "Dragon", "Drake", "Dressler",
      "Drew", "Dublin", "Dubois", "Duchamps", "Duke", "Dumont", "Dunwich", "Dupont", "Durant", "Dutch", "Dutcher", "Duval",
      "Eaton", "Eccles", "Eccleston", "Edgar", "Edgerton", "Eduardo", "Elias", "Elijah", 
      "Elizabeth", "Ellery", "Elliott", "Ellis", "Ellison", "Elmer", "Elrod", "Elway", "Elwood", "Ender", "Endicott", "Engle", 
      "Englewood", "Erickson", 
      "Esker", "Esparza", 
      "Espinosa", "Espinoza", "Esteban", "Estevez", "Estrada", "Eugene", 
      "Faber", "Fabiano", "Fan", "Faucher", "Faucheux", "Faulk", "Faulkner", "Faust", "Favreau", "Fay", "Ferguson", "Fernando", 
      "Ferrera", "Ferrari", "Fillmore", "Finch", "Fincher", "Fink", "Finn", "Finnegan", "Finney", 
      "Fitz", "Fitzgerald", "Fitzpatrick", "Flag", "Flake", "Focker", "Fontaine", "Ford", 
      "Forester", "Forrest", "Fortin", "Foss", "Fowler", "Fox", "Frank", "Franklin", 
      "Frasier", "French", "Friedman", "Frost", "Fujiwara",
      "Gainer", "Gaines", "Gall", "Gallagher", "Galloway", "Galt", "Gander", "Ganton", "Garber", "Garreth", "Garrett", "Garcia", "Gay", "Gaylord", "Gerber", "Gering", 
      "Gill", "Gilmore", "Givens", "Glover", "Goetze", "Gold", "Gomez", "Gonzalez", "Gordon", "Granden",
      "Grant", "Gray", "Green", "Grey", "Gull", "Gunderson", "Gunn", "Gurung", "Guthrie", "Guy",
      "Ham", "Hamilton", "Hamm", "Hammond", "Harden", "Hardy", "Harris", "Harrison", "Hart", "Hatch", "Hatcher", "Hawkins", "Haynes", "Hendricks", "Hendrickson", "Herron",
      "Hicks", "Hilton", "Hines", "Hitch", "Hitchcock", "Hitchens", "Holt", "Hong", "Horne", "Horner", "Horton", 
      "House", "Houston", "Howard", "Hughes", "Hunt", "Hunter", "Huron", "Hussel", "Hutch", "Hutchins", "Hutchinson", "Hwang",
      "Idder", "Ilton", "Ishida", "Ito", "Ives", "Ivers", "Iverson", "Ivy",
      "Jackson", "James", "Jameson", "Jeeves", "Jeffers", "Jefferson", "Jenkins", "Jensen", 
      "Jeong", "Jester", "Jives", "Joanna", "Johnson", "Jones", "Jordan", "Jorgensen", "Jovovich", "Juan", "Justice", 
      "Kacey", "Kato", "Katz", "Keaton", "Kellogg", "Kendra", "Kendricks", "Kennedy", "Kenny", "Khadka", "Khan", "Khatun", 
      "Kilpatrick", "Kilroy", "Kim", 
      "King", "Kingsbury", "Kingston", "Klein", "Knight", "Kobayashi", "Koch", "Kraft", "Kumar",
      "Labato", "Lam", "Lamb", "Lamberson", "Lambert", "Lance", "Land", "Landers", "Landon", "Landry", "Lane", "Larimore", "Larson",
      "Le", "Lebowsky", "Leibowitz", "Lee", "Leroy", "Lexington", "Li", "Lin", "Lincoln", "Lister", 
      "Liston", "Locke", "Lockheart", "Loker", "London", "Love", "Lowry", "Luther", "Lutterman",
      "MacArthur", "MacDonald", "MacElroy", "MacEvoy", "Mader", "Marsh", "Marshall", "Martin", "Martinez", "Masaka", "Masters", 
      "Masterson", "Masuda", "Mathern", "Mathers", "Matsuda", "Matsumoto", 
      "May", "Mays", "McCabe", "McCall", "McCarthy", "McCay", "McCormick", 
      "McMillan", "McNabb", "McNamara", "McNeil", "Mendoza", "Mercer", "Meyer", "Meyers", "Michaels", 
      "Miller", "Millsaps", "Minson", "Mitchell", "Mond", "Moreno", "Morgan", "Morris", "Morrison", "Morse", "Mortonson", "Mueller", 
      "Muir", "Muirbrook", "Munn", "Munson", "Muridian", "Myer",
      "Nakamura", "Naples", "Nelson", "Newbauer", "Newman", 
      "Ngo", "Nguyen", "Nieman", "Night", "Nightingale", "Nixon", "Norrington", "Norris", "Nuberg",
      "Oakley", "Obermeyer", "O'Brian", "O'Malley", "Ono", "O'Reilly", "Ortiz", "Orville", "Oscar", "Oscara", "Owen", "Owens", "Overby",
      "Pace", "Padilla", "Pagillo", "Palmer", "Paris", "Park", "Parsons", "Patel", "Pendleton", "Penn", "Penny", "Pepper", 
      "Peters", "Peterson", 
      "Petrovic", "Phan", "Phillips", "Phoenix", "Picard", "Pischke",
      "Pitt", "Pitts", "Pittsenbarger", "Pittman", "Poe", "Pope",
      "Popper", "Potter", "Potts", "Powell", "Preston", "Price",
      "Prince", "Princeton", "Pruitt", "Pryor",
      "Quaid", "Quan", "Quibble", "Quill", "Quimby", "Quincy", "Quinn",
      "Rafferty", "Ramirez", "Ramos", "Rasmussen", "Red", "Redondo", "Reece", "Reed", "Reese", "Remington", 
      "Render", "Renstrom", "Reyes", "Reynolds", 
      "Rice", "Richard", "Richards", 
      "Richardson", "Ricketts", "Rivera", "Roach", "Robbins", "Roberts", "Robin", "Robinette", "Robinson", "Robles",
      "Rodrigo", "Rodriguez", "Rogers", "Rohr", "Rome", "Romeo", "Romero",
      "Roosevelt", "Ross", "Ruiz", "Ruse", "Russell", "Rydell", 
      "Samson", "Sanchez", "Sanders", "Sanderson", "Santos", "Sasaki", "Sather", "Sato", "Sawyer", "Schmermund",
      "Schwartz", "Scott", "Searfoss", "Seaton", "Seaver", "Sena", "Seneca", "Sesker", "Shane", "Shannon", "Shapiro", 
      "Sherman", "Shire", "Shock", "Shockley", "Sierra", "Silva", 
      "Silver", "Silverberg", "Simpson", 
      "Singh", "Smith", "Smithers", "Song", "Spencer", "Spoon", "Spooner", "Stanford", "Stanley", "Starr", "Stedman", "Stefano", "Stephens", 
      "Sterling", "Stevens", "Stevensen",
      "Stewart", "Stout", "Stover", "Strauss", "Sun", "Suzuki", "Swan", "Swanson", "Swenson", "Sydney", "Sylvester", 
      "Tack", "Tadich", "Taft", "Tafton", "Tanaka", "Tanner", "Tate", "Taylor", "Thapa", "Thatch", "Thatcher", "Thomas", "Thompson", 
      "Tobias", "Tobin", "Took", "Trainer", "Trembley", "Troy", "Tull", "Tully", "Turcott", "Turner", "Tran", "Tyler", "Tyson",
      "Ubrick", "Underton", "Underwood", 
      "Vale", "Vance", "Vandall", "Van Winkle", "Vicente", "Vince", "Vincent", "Virdell",
      "Walker", "Wall", "Waller", "Wang", "Waring", "Warner", "Washburn", "Washington", "Watkins", "Watson", "Wayne", "Weber", 
      "Webb", "Welch", 
      "Wendell", "Wendy", "Werner", 
      "West", "Weston", "White", "Whitman", "Whittle", 
      "Williams", "Wilson", "Winchester", "Wind", "Windleton", "Witherspoon",
      "Wolcott", "Wolf", "Wolfe", "Wong", "Wool", "Woolard", "Worth", 
      "Worthington", "Worthy", "Wright",
      "Xanth", "Xavier", 
      "Yadav", "Yamada", "Yamaguchi", "Yamamoto", "Yang", "Yarrow", "Yates", "Yeaton",
      "Yeats", "Yellow", "Yen", "Yoon", "York", "Yosef", "Yoshida", "Young",
      "Zane", "Zagorsky", "Zepeda", "Zhang", "Zimmerman"
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