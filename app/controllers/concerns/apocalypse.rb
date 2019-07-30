module Apocalypse
    extend ActiveSupport::Concern
    
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
        
        apoccaps1 = words4.sample.capitalize
        apoccaps2 = words4.sample.capitalize
        apoccaps3 = words4.sample.capitalize
        apoccaps4 = words4.sample.capitalize
        apoccaps5 = words4.sample.capitalize
        
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
  
end