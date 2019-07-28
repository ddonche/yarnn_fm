module Western
    extend ActiveSupport::Concern
    
    def western
        capital_words = [
          "Arizona Territory", "America", "Baptized", "Commanche",
          "Kentucky",  
          "Mississippi", "Mustang", "Pork chops",
          "Southern", "Tennessee"
          ]
        words = [ 
          "ammunition",
          "antelope", "antlers", "Apache", "army", 
          "bacon", "bandits", "baptist", "barb wire", 
          "barkin up the wrong tree", 
          "beer", "boots", "booze", "bourbon", "Bowie knife", "brambles", "brand", "branding", "branding iron", "brim",
          "britches", "bronco", "buck",
          "buckskin", "bull", "bull horns", "bullets", 
          "butter", 
          "cactus", "caliber", "California", "camp", 
          "cartridge", "castrate",
          "cattle", "cavalry", "chamber", "chapparal", "chaps", "chickens", 
          "chili", "Christian", "chuckwagon", "church", "clear leather", "Colt",
          "confederate", 
          "copperhead", "cornbread", "corral", "cotton", "cottonmouth", "country", "cow", 
          "cowboy", "creek", "cross", "cud", 
          "dang", "darn", "dead man's hand", "deer", "deputy", "dern", "diamondback", 
          "diddly squat", "dirty",
          "Dixie", "doesn't know his ass from a hole in the ground",
          "dog", "dust", "duster", "dusty leather", "dynamite",
          "eagle", "elk", "estrus", 
          "farm", "fence", "fiddle", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", 
          "folks", "foreman", "front porch",
          "gambler", "gander", "gelding", 
          "gets my goose", "git", "gold", 
          "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grizzly", "guns", "gunslinger", 
          "gussied up", "gut",
          "hat", "hay", "hay bales", "heaven", "heifer", "hell", "henhouse", "herd",  
          "hissy fit", "hogs", 
          "holler", "holster", "hornet", "horses", 
          "horseshoe", "horse thieves", "hound dog", "hunting", "hushpuppy", "hymnal", 
          "Indians", "iron sights",
          "jackrabbit", "jaw", "Jesus",
          "John Wayne", 
          "kin", "kinfolk", "knee-high", "knife", "knuckle",
          "lariat", "lasso", "lever action",  
          "like a chicken with its head cut off", "livery and stable", "locomotive",
          "magazine", "magnum", "mama", "mare", "marshall", "mesquite", "Mexico",  
          "molasses", "mosquito",
          "naw", "nit-pickin",
          "oak tree", "Oklahoma", "ore", "ornery", "outhouse", "overalls", 
          "palamino", "panhandler", "pardner", "passel", "pepper", "pew", "piano",
          "a pig in shit", "pig's feet", "piddly", "Pinkertons", "pistol", "plantation", "plumb", "poker",
          "pony", "poor as a church mouse", "possum", "post-hole digger",  
          "preacher", "prospector",
          "quicksand", 
          "ranch", "Rangers", "rascal", "rattler", "rebel", 
          "reckon", "recollection", "reel", "reins", "reload", "Remington", "remuda",
          "republican", "reverend", "revolver", "rifle", "rimfire", 
          "riverboat", "rockin chair", "rod",
          "rooster", "royal flush", "rural", "rut", 
          "saddle", "saddle bags", "saddle horn", "saloon", "sausage", "savannah", "scope", "scripture", "sermon", "sheriff", 
          "shoat", "shootin", "sideburns",  
          "sinner",
          "skedaddle", "skeeter", "slaughter", "slingshot", "slop bucket", "smoked", 
          "sow", "spitoon", "spurs", "stagecoach", "steer",
          "supper", "swamp", 
          "tack", "tarnation", "Texas", "these parts", "train", 
          "trigger", "tuckered", "turnip greens", 
          "twine",
          "uncle", "varmint", "veterans", "Virginia",
          "wadn't", "wagon", "wagonwheel", "western", "West Virginia", "whiskey", "whittle", "whorehouse", 
          "Winchester", "work", "wrangler", "wrastlin",
          "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha"
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
        
        @western_ipsum = ran_capital1 + " " + ran_words1.delete('"') + ". " + ran_capital2 + " " + ran_words2.delete('"') + ". " + ran_capital3 + " " + ran_words3.delete('"') + ". " + ran_capital4 + " " + ran_words4.delete('"') + ". " + ran_capital5 + " " + ran_words5.delete('"') + "."
        
    end
  
end