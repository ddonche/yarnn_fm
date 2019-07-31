module Military
    extend ActiveSupport::Concern
    
    def military
          
        words9 = [ ".556", ".762", "21-gun salute", "9-line", "9mm", "AAFES", "Abrams", "about-face", 
                    "achievement award", "addiction", "adjust fire", 
                    "affirmative", "Afghanistan", "airborne", "aircraft carrier", "airfield", "Air Force", 
                    "airman", 
                    "alcohol", "altitude", "ambush", "ammo can", "ammo pouches", "antenna",
                    "Apache", "armed escort", "armory", "Army", "Article 15", 
                    "artillery", "attention", "AWOL",
                    "back-azimuth", "BAH", "barracks", "basic training", "battalion", "battery", "battle", "battle buddy", 
                    "battleship", "bearing", "beret", "billeting", "blackout driving", "black flag conditions", "blanks", 
                    "blouse your boots", "bomb", "boot camp", 
                    "booze", "brig", "brigade", "bullets", "bunker", "butterbar", "BX/PX",
                    "C-130", "CAC card", "cadre", "Call of Duty", "call sign", "camaraderie", "camelback", "camouflage", "camp", "canine", 
                    "canteen", "captain", 
                    "cargo", "casualty",
                    "casualty collection point", "cavalry", "chain of command", 
                    "chaplain", "check you for a hernia", "chem gear", "chevron", "Chinook", "chin strap", "chow hall", "claymore mine", "clearing rooms", 
                    "close air support", "clothing and sales", "Coast Guard", "collateral damage", "colonel", "column", "combat", "combat lifesaver",
                    "commander", "commendation medal", "compass", "concertina wire", "contractors", "convoy", "corporal", "cot", "counseling session",
                    "courtmarshal", "CQ", "crew-served weapon", "crypto",
                    "DD-214", "dark humor", "dead reckoning", "deck", "demolition", "demotion", "dependents", "deployed", 
                    "detachment", "detail", "dining facility", "dip", "division", "divorce", "dog tags", "do not walk on the damn grass", "door gunner", 
                    "dress blues", "dress right dress", "drill", 
                    "drill instructor", "drone strike", "double-time", "duty station", "DUI",
                    "E-4 mafia", "ear plugs", "engineer", "ensign", "EOD", "e-tool", "ETS date", "exercise", "explosives", "eye pro",
                    "face paint", "family separation pay", "fast movers", "fighter pilot", "fire for effect", "fire support", "firing pin", 
                    "fixed wing", "flak", "flares", "flash bang", "flight", "flight crew", 
                    "flightline", "flight physical", "flight suit",
                    "flutterkicks", "FOB", "fobbit", "force multiplier", "formation", "Fort Leavenworth", "four-star general",
                    "frag", "frago", "fraternize", "front-leaning rest", "front towards enemy", "full bird colonel", 
                    "gas mask", "gate guards", "general", "get your hands out of your pockets", 
                    "Global War on Terror", "GPS", "green beret", "grenades", "grunt", "guard duty", "gun", 
                    "gunner", "gunny", "gunship", "hasty", "hazing", "heading", "hearing loss", 
                    "hearts and minds", "helicopter", "helmet", "high and tight", "high speed", "honorable discharge",
                    "honor guard", "hooch", "housing allowance", "howitzer", "humvee", "hydrate",
                    "IED", "infrared", "illum rounds", "infantry", "infosec", "inspection", "installation", "insubordination", "insurgents", "intel", 
                    "interpreter", "interrogator", "IP", "Iraq", "iron sights", "I.V.",
                    "JAG", "jarhead", "JDAM", "jerry can", "jets", "Jodie", "Joe", "joint operation", "jump boots", "jumpmaster", "jump school",
                    "kit", "knee replacement surgery", "Korea", "Kuwait is not a deployment", "lance corporal", "landing zone", "landmine", "laser-guided munitions",
                    "latrine", "leave", "leg", "lieutenant", "lieutenant colonel", "lightning within five", "lines of fire", "linguist", 
                    "live fire", "local national", "low crawl",
                    "maintenance", "malingering", "map", "mandatory fun", "march", "marine", "Marine Corps", "marksman", "Medal of Honor", "medevac", "medic",
                    "MEPS", "mess hall", "MGIB", "military", "military police", "mission", "morale", 
                    "mortars", "motorcade", "motor pool", "mounted", "Motrin", "movement to contact", "MRE", "mustache", "MWR",
                    "NATO", "Navy", "Navy SEAL", "NCO", "negligent discharge", "non-judicial punishment", "nonner", "NVGs",
                    "observation point", "obstacle course", "officer", "opsec", "ordinance", "out of regs", "outside the wire", "pace count", "parachute", 
                    "paracord", "parade rest",
                    "paratrooper", "pathfinder", "patrol", "PCS", "per diem", "piss tubes", "plain text", "plate carrier",
                    "platoon", "platoon leader", "Playstation", "pornography", "port-o-john", "positive ID", "post", "Powerpoint presentation", 
                    "Predator feed", "present arms", 
                    "private", "promotion", "prosthetic",
                    "psy-ops", "PTSD", "PT test", "pullups", "Purple Heart", "pushups",
                    "qual", "quartermaster", 
                    "R&R", "rack out", "radar", "radio", "raid", "Raiders", "rally point", "range",
                    "Rangers", "Rangers lead the way", "Ranger panties", "rank", "rappel", "rations", "recon", 
                    "the recruiter lied to me", "reflective belt", "refuel", "regiment", "reinforcements", "reenlistment bonus",
                    "reprimand", "reserve", "respect", "resupply",
                    "retirement pay", "retreat", "reveille", "ribbon rack", "rifle", 
                    "rock drill", 
                    "rocket attack", "rock or something", "roger", "rope climb", "rotary wing", "ruck march", "safety brief", "sailor", 
                    "salute", "sandbags", "sandstorm", "sapper", "satcom", "say again", "scope", "scuba", "seaman", "security clearance", "sergeant", 
                    "sexual assault awareness training",
                    "shaving waiver", "shin splints", "ship", "ship out", "shopette", "shrapnel", 
                    "sick call", "silkies", "Silver Star", 
                    "sitrep", "situps", "skipper", "smoke session", "sniffle gear", "sniper", "soldier", "sonar", "soup sandwich",
                    "spades", "Special Air Service", "Special Forces", "spetznaz", "spit-shine", "spitter", 
                    "spotter", "squad", "squad leader", "squadron", "stripes", "strippers", 
                    "subordinate", "substance abuse", "supply", "survival school",
                    "tab", "tactical", "tacticool", "take cover", "tank", "tanker", "target", "tattoos", "tax-free",
                    "tech school", "terrorist", "TDY", "tourniquet",
                    "training", "travel voucher", "troops", "troops in contact", "turret",
                    "UCMJ", "unexploded ordinance", "University of Phoenix", "USO tour", "VA benefits", "vaccines", "VA hospital", "velcro", 
                    "veteran", "Vietnam", "VFW",
                    "washout", "weapon", "weapons cache", "Westpointe", "wing", "woobie", "WWI", "WWII", "Xbox", "XO", "Zulu time"
          
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