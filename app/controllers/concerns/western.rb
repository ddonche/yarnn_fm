module Western
    extend ActiveSupport::Concern
    
    def western
        capital_words = [
          "Arizona Territory", "America", "Appaloosa", "Baptized", "Bareback",
          "Buffalo rifle", 
          "Canada", "Coach gun", "Commanche", "Dakota", "Dodge", "Gang", 
          "Headdress", "Henry rifle",
          "Kentucky",  
          "Mississippi", "Missouri", 
          "Morgan horse", "Mustang", "Pork chops", "Quarter horse",
          "Rattler", "Rocky Mountains", "Saddlebred", "Sioux", "Springfield", 
          "Smith & Wesson", "Stirrups",
          "Tennessee"
          ]
        words = [ 
          "ammunition",
          "antelope", "antlers", "Apache", "Arabian", "army", "arrowhead", "arrows",
          "bacon", "bandits", "baptist", "barb wire", 
          "barkin up the wrong tree", "barn", "bay", "bedroll",
          "beer", "Bible", "bill of sale", "bison", "blacksmith",
          "boots", "booze", "bounty", "bourbon", "Bowie knife", "brambles", "brand", "branding", "branding iron", "brim",
          "britches", "bronco", "buck",
          "buckskin", "buffalo", "bull", "bull horns", "bullets", "bunk", "bunkhouse",
          "butter", 
          "cactus", "caliber", "California", "camp", "campfire",
          "cartridge", "castrate",
          "cattle", "cavalry", "chamber", "chapparal", "chaps", "chickens", "chief",
          "chili", "Christian", "chuckwagon", "church", "Civil War",
          "clear leather", "Colorado", "Colt", "Colt Lightning Carbine",
          "confederate", 
          "copperhead", "cornbread", "corral", "cotton", "cottonmouth", "country", "courthouse", "cow", 
          "cowboy", "creek", "cross", "cud", 
          "dang", "darn", "dead man's hand", "dead or alive", "deer", "deputy", "dern", "Derringer",
          "diamondback", 
          "diddly squat", "dirty",
          "Dixie", "doesn't know his ass from a hole in the ground",
          "dog", "donkey", "dust", "duster", "dusty leather", "dynamite",
          "eagle", "elk", "estrus", 
          "farm", "fence", "ferrier", "fiddle", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", 
          "flint and steel", "flintlock", "folks", "foreman", "front porch",
          "gallows", "gambler", "gander", "gelding", 
          "gets my goose", "git", "gold", 
          "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grizzly", "gunpowder", "guns", "gunslinger", 
          "gussied up", "gut",
          "hanging", "hangman", "hat", "hay", "hay bales", "heaven", "heifer", "hell", "henhouse", "herd",  
          "hissy fit", "hogs", 
          "holler", "holster", "hornet", "horses", 
          "horseshoe", "horse thieves", "hound dog", "hunting", "hushpuppy", "hymnal", 
          "Indians", "Indian territory", "iron sights",
          "jackrabbit", "jaw", "Jesus",
          "John Wayne", 
          "kin", "kinfolk", "knee-high", "knife", "knuckle",
          "lariat", "lasso", "lever action",  
          "like a chicken with its head cut off", "livery and stable", "locomotive",
          "magazine", "magnum", "mama", "mare", "marshall", "mesquite", "Mexico",  
          "mocassins", "molasses", "Montana", "mosquito", "mule",
          "naw", "nit-pickin", "noose",
          "oak tree", "Oklahoma", "ore", "ornery", "outhouse", "overalls", "ox", "oxen", 
          "painted", "palamino", "panhandler", "pardner", "passel", "pepper", "pew", "piano",
          "a pig in shit", "pig's feet", "piddly", "Pinkertons", "pistol", "plains", "plantation", "plumb", "poker",
          "pony", "poor as a church mouse", "possum", "post-hole digger",  
          "preacher", "prospector",
          "quicksand", 
          "ranch", "Rangers", "rascal", "rattler", "rebel", 
          "reckon", "recollection", "reel", "reins", "reload", "Remington", "remuda",
          "republican", "reverend", "revolver", "rifle", "rimfire", "Rio Grande", "river",
          "riverboat", "roan", "rockin chair", "rod",
          "rooster", "royal flush", "rural", "rut", 
          "saddle", "saddle bags", "saddle horn", "saloon", "sausage", "savannah", "scattergun", "scope", "scripture", "sermon", "sheriff", 
          "shoat", "shootin", "shotgun", "sideburns",  
          "sinner",
          "skedaddle", "skeeter", "slaughter", "slingshot", "slop bucket", "smoked", 
          "snow", "sow", "Spencer repeating rifle", "spitoon", "spurs", "stagecoach", "steer", "strawberry roan",
          "supper", "swamp", "switchback",
          "tack", "tarnation", "teepee", "Texas", "these parts", "thornbush", "trail", "train", "tribe",
          "trigger", "tuckered", "tumbleweed", "turnip greens", 
          "twine",
          "uncle", "varmint", "veterans", "Virginia",
          "wadn't", "wagon", "wagonwheel", "wanted poster", "western", "West Virginia", "whiskey", "whittle", "whorehouse", 
          "Winchester", "work", "wrangler", "wrastlin", "Wyoming",
          "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha", "Yukon"
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