module Military
    extend ActiveSupport::Concern
    
    def military
          
        words9 = [ ".556", ".762", "21-gun salute", "9-line", "9mm", "AAFES", "Abrams", "about-face", "addiction", "adjust fire", 
                    "affirmative", "airborne", "airfield", "Air Force", 
                    "airman", 
                    "alcohol", "altitude", "ambush", "ammo pouches", "antenna",
                    "Apache", "armed escort", "armory", "Army", "Article 15", 
                    "artillery", "AWOL",
                    "back-azimuth", "BAH", "barracks", "basic training", "battalion", "battery", "battle", "battle buddy", 
                    "battleship", "bearing", "beret", "billeting", "blackout driving", "black flag conditions", "blanks", 
                    "blouse your boots", "bomb", "boot camp", 
                    "booze", "brigade", "bunker", "butter bar", "BX/PX",
                    "C-130", "CAC card", "cadre", "call sign", "camaraderie", "camelback", "camouflage", "camp", "canine", "canteen", "captain", "cargo", "casualty",
                    "casualty collection point", "cavalry", "chain of command", 
                    "chaplain", "check you for a hernia", "chem gear", "chevron", "Chinook", "chin strap", "chow hall", "clearing rooms", 
                    "close air support", "clothing and sales", "Coast Guard", "colonel", "column", "combat", "combat lifesaver",
                    "commander", "compass", "concertina wire", "convoy", "corporal", "cot", "counseling session",
                    "courtmarshal", "CQ", "crew-served weapon", "crypto",
                    "DD-214", "dark humor", "dead reckoning", "deck", "demolition", "demotion", "dependents", "deployed", 
                    "detachment", "dining facility", "dip", "division", "divorce", "dog tags", "door gunner", 
                    "dress blues", "dress right dress", "drill", 
                    "drill instructor", "drone strike", "double-time", "DUI",
                    "ear plugs", "engineer", "ensign", "EOD", "e-tool", "exercise", "explosives",
                    "face paint", "family separation pay", "fire for effect", "fire support", "firing pin", "flares", "flash bang", "flight", "flight crew", 
                    "flightline", "flight physical",
                    "flutterkicks", "FOB", "force multiplier", "formation", 
                    "frag", "frago", "fraternize", "front-leaning rest", "front towards enemy", "full bird", 
                    "gas mask", "general", "get your hands out of your pockets", "GPS", "grenades", "guard duty", "gun", 
                    "gunner", "gunny", "hasty", "hazing", "heading", "hearing loss", 
                    "hearts and minds", "helicopter", "helmet", "high and tight", "high speed", "honorable discharge",
                    "honor guard", "hooch", "housing allowance", "humvee", "hydrate",
                    "IED", "infrared", "illum rounds", "infantry", "inspection", "installation", "insurgents", "intel", 
                    "interpreter", "interrogator", "IP", "iron sights", "I.V.",
                    "JAG", "JDAM", "jerry can", "jets", "Jodie", "joint operation", "jump boots", "jumpmaster", "jump school",
                    "kit", "knee replacement surgery", "Korea", "lance corporal", "landing zone", "landmine",
                    "latrine", "leave", "lieutenant", "lieutenant colonel", "lightning within five", "lines of fire", "linguist", 
                    "live fire", "local national", "low crawl",
                    "maintenance", "map", "march", "marine", "Marine Corps", "marksman", "Medal of Honor", "medevac", "medic",
                    "mess hall", "MGIB", "military", "military police", "mission", "morale", 
                    "mortars", "motor pool", "mounted", "Motrin", "movement to contact", "MRE", "mustache", "MWR",
                    "NATO", "Navy", "Navy SEAL", "NCO", "negligent discharge", "non-judicial punishment", "NVGs",
                    "observation point", "obstacle course", "officer", "opsec", "ordinance", "outside the wire", "pace count", "parachute", 
                    "paracord", "parade rest",
                    "paratrooper", "pathfinder", "patrol", "per diem", "piss tubes", "plain text", "plate carrier",
                    "platoon", "platoon leader", "pornography", "positive ID", "post", "Powerpoint presentation", "present arms", 
                    "private", "promotion", "prosthetic",
                    "psy-ops", "PTSD", "PT test", "pullups", "Purple Heart", "pushups",
                    "qual", "quartermaster", 
                    "R&R", "rack out", "radio", "raid", "Raiders", "rally point", "range",
                    "Rangers", "Rangers lead the way", "Ranger panties", "rank", "rappel", "rations", "recon", 
                    "the recruiter lied to me", "reflective belt", "refuel", "regiment", "reinforcements", 
                    "reprimand", "reserve", "resupply",
                    "retirement pay", "retreat", "ribbon rack", "rifle", 
                    "rock drill", 
                    "rocket attack", "rock or something", "roger", "rope climb", "ruck march", "safety brief", "sailor", 
                    "salute", "sandbags", "sandstorm", "sapper", "satcom", "say again", "scuba", "seaman", "security clearance", "sergeant", 
                    "sexual assault awareness",
                    "shaving waiver", "shin splints", "ship", "ship out", "shopette", "shrapnel", 
                    "sick call", "silkies", "Silver Star", 
                    "sitrep", "situps", "smoke session", "sniper", "soldier",
                    "spades", "Special Forces", "spit-shine", "spitter", "squad", "squad leader", "squadron", "stripes", "strippers", 
                    "substance abuse", "supply", "survival school",
                    "tab", "take cover", "tank", "tanker", "target", "tattoos",
                    "tech school", "terrorist", "TDY", "tourniquet",
                    "training", "travel voucher", "troops", "troops in contact", "turret",
                    "UCMJ", "unexploded ordinance", "USO tour", "VA benefits", "vaccines", "VA hospital", "velcro", "veteran", "Vietnam", "VFW",
                    "washout", "weapon", "weapons cache", "Westpointe", "wing", "woobie", "WWI", "WWII", "XO",
          
        ]
          
        milcaps1 = words9.sample.capitalize
        milcaps2 = words9.sample.capitalize
        milcaps3 = words9.sample.capitalize
        milcaps4 = words9.sample.capitalize
        milcaps5 = words9.sample.capitalize
        
        sentence9_len1 = rand(5...30)
        mil1 = words9.sample(sentence9_len1).map(&:inspect).join(' ')
        sentence9_len2 = rand(5...30)
        mil2 = words9.sample(sentence9_len2).map(&:inspect).join(' ')
        sentence9_len3 = rand(5...30)
        mil3 = words9.sample(sentence9_len3).map(&:inspect).join(' ')
        sentence9_len4 = rand(5...30)
        mil4 = words9.sample(sentence9_len4).map(&:inspect).join(' ')
        sentence9_len5 = rand(5...30)
        mil5 = words9.sample(sentence9_len5).map(&:inspect).join(' ')
        
        @military_ipsum = milcaps1 + " " + mil1.delete('"') + ". " + milcaps2 + " " + mil2.delete('"') + ". " + milcaps3 + " " + mil3.delete('"') + ". " + milcaps4 + " " + mil4.delete('"') + ". " + milcaps5 + " " + mil5.delete('"') + "."
        
    end
  
end