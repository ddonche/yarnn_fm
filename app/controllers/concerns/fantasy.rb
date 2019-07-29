module Fantasy
    extend ActiveSupport::Concern
    
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
          "Inside", "Iron", "Ivory", "Jade", "Jolly", "Joyous", "Jumping", 
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
    
        fletter = ["a", "ar", "b", "br", "c", "cr", "ch", "chr", "d", "d'", "dh", "dr", "e", "er", "f", "fr", "g", "gh", "gr", "h", 
            "i", "ir", "j", "k", "kr", "l", "m", "n", "n'", "o", "o'", "or", "p", "q'", "qu", 
            "r", "r'", "s", "s'", "sh", "shr", "st", "str", "t", "t'", "th", "tr", "u", "ur", "v", "vr", "w", "wr", "x", "y", "z", "zh"]  
          
        first_syl = [ 
          "ab", "ac", "ach", "ack", "ad", "ae", "aech", "aed", "ael", "aem", "aen", "aesh", "aeth", "af", "ag", "ah", "ai", 
          "aib", "aich", "aid", "aik", "ail", "aim", "ain", "air", "aip", "ais", "aish", "aist", "ait", "aith", "aiv", "aix", "ak", "al", "ald", "alf", "alm", "aln", "am", "an",
          "anch", "and", "anf", "ang", "ans", "ansh", "ant", "anth", "ao", "ap", "ar", 
          "ard", "arg", "arl", "arm", "arn", "ars", "art", "arth", "as", "ash", "ast", "at", "ath", "au", "av", "aw", 
          "awd", "awe", "awl", "awn", "aws", "awst", "awt", "awth", "ax", "ay", "az",
          "ea", "eb", "ec", "ech", "eck", "ed", "ef", "eg", "eh", "ei", 
          "eib", "eich", "eid", "eik", "eil", "eim", "ein", "eir", "eip", "eis", "eish", "eist", "eit", "eith", "eiv", "eix", "ek", "el", "eld", "elf", "elm", "eln", "els", "elt", "em", "en", 
          "ench", "end", "enf", "eng", "ens", "ensh", "ent", "enth","eo", "eod", "eol", "eom", "eon", "ep", "er", 
          "erd", "erg", "erl", "erm", "ern", "ers", "ert", "erth",
          "es", "esh", "est", "et", "eth", "eu", "ev", "ew", 
          "ewd", "ewe", "ewl", "ewn", "ews", "ewst", "ewt", "ewth", "ex", "ey", "ez",
          "ia", "iac", "iack", "iad", "iag", "ial", "iam", "ian", "ias", "iat", "iath", "ib", "ic", "ich", "ick", "id", "if", "ig", "ih", "ik", "il", "im", "in", "inch",
          "ind", "ing", "ins", "insh", "int", "inth", "io", "iod", "iol", "iom", "ion", "ior", "ios", "ip", "ir", 
          "ird", "irg", "irl", "irm", "irn", "irs", "irt", "irth", "is", 
          "ish", "ist", "it", "ith", "iu", "iul", "ium", "iun", "iur", "ius", "iv", "ix", "iy", "iz",
          "oa", "oach", "oad", "oaf", "oag", "oah", "oak", "oal", "oam", "oan", "oar", "oas", "oat", "oax", "ob", "oc", "och", "ock", "od", 
          "oe", "of", "og", "oh", "oi", 
          "oib", "oich", "oid", "oik", "oil", "oim", "oin", "oir", "oip", "ois", "oish", "oist", "oit", "oith", "oiv", "oix", "oj", "ok", "ol", "old", "olf", "olm", "oln", "ols", "olt", "om", "on", 
          "onch", "ond", "ong", "ons", "onsh", "ont", "onth", "op", "oq", 
          "or", "ord", "org", "orl", "orm", "orn", "ors", "ort", "orth", 
          "os", "osh", "ost", "ot", "oth", "ou", "ov", "ow", "owd", "owe", "owl", "own", "ows", "owst", "owt", "owth", "ox", "oy", "oz",
          "ua", "ub", "uc", "uch", "uck", "ud", "ue", "uf", "ug", "uh", "ui", 
          "uib", "uich", "uid", "uik", "uil", "uim", "uin", "uir", "uip", "uis", "uish", "uist", "uit", "uith", "uiv", "uix","uj", "uk", "ul", "uld", "ulf", "ulm", "uln", "uls", "ult", "ulv", "um", "un", 
          "und", "ung", "uns", "unsh", "unt", "unth", "uo", "up", 
          "uq", "ur", "urd", "urg", "url", "urm", "urn", "urs", "urt", "urth", "us", "ush", "ust", "ut", "uth", "uv", "ux", "uy", "uz",
          "y", "ych", "yd", "yk", "yl", "ym", "yn", "yo", "yp", "yr", "ys", "ysh", "yt", "yth", "yv", "yx", "yz"
          ]
          
        consonants = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "r", "s", "t", "v", "w", "x", "z" ]
          
        vowels = [ "a", "e", "i", "o", "u", "y"
          ]
          
        vowels2 = ["a", "ae", "ai", "ao", "au", "ay", 
                  "e", "ei", "eo", "eu", "ey",
                  "i", "ia", "ie", "io", "iu", "iy",
                  "o", "oa", "oe", "oi", "ou", "oy",
                  "u", "ua", "ue", "ui", "uo", "uy",
                  "y", "ya", "ye", "yi", "yo", "yu"
                  ]
          

        fname01 = fletter.sample + first_syl.sample
        fname1 = fletter.sample + first_syl.sample
        fname2 = fletter.sample + first_syl.sample + vowels.sample
        fname3 = fletter.sample + first_syl.sample
        fname4 = fletter.sample + first_syl.sample + vowels2.sample
        fname5 = fletter.sample + first_syl.sample
        fname6 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample
        fname7 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample
        fname8 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample + first_syl.sample
        fname9 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample + first_syl.sample + vowels.sample
        fname10 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample + vowels2.sample
        fname11 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample + vowels.sample
        fname12 = fletter.sample + first_syl.sample + vowels.sample + consonants.sample + first_syl.sample

                  
        @fnames = "".html_safe + fname01.delete('"').capitalize + "<br>".html_safe + fname1.delete('"').capitalize + "<br>".html_safe + fname2.delete('"').capitalize + "<br>".html_safe + fname3.delete('"').capitalize + "<br>".html_safe + fname4.delete('"').capitalize + "<br>".html_safe + fname5.delete('"').capitalize + "<br>".html_safe + fname6.delete('"').capitalize + "<br>".html_safe + fname7.delete('"').capitalize + "<br>".html_safe + fname8.delete('"').capitalize + "<br>".html_safe + fname9.delete('"').capitalize + "<br>".html_safe + fname10.delete('"').capitalize + "<br>".html_safe + fname11.delete('"').capitalize + "<br>".html_safe + fname12.delete('"').capitalize + "<br>".html_safe
    end
end