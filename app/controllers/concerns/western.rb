module Western
    extend ActiveSupport::Concern
    
    def western
        words = [ 
          "above one's bend", "ace in the hole", "acquisitive", "acre", "acreocracy", "Adam's Ale", "America", "ambush", "ammunition",
          "among the willows", "antelope", "antlers", "Apache", "appaloosa", "Arabian", "Arizona Territory", "army", 
          "arrowhead", "arrows", "ashes", "ash-hopper", "atween", "axle grease",
          "backdoor trots", "bacon", "bad hoss", "bad medicine", "bamboozle", "bandero", "bandits", "baptist", "baptized", "barb wire", "bareback",
          "barkin up the wrong tree", "barn", "barrel fever", "barrens", "bay", "beans", "bearskin", "bedroll",
          "beer", "Bible", "bill of sale", "biscuits", "bison", "blacksmith", "bluffs",
          "boots", "booze", "border raid", "bounty", "bourbon", "Bowie knife", "brambles", "brand", "branding", "branding iron", 
          "breaking horses", "brim",
          "britches", "bronco", "buck",
          "buckskin", "buffalo", "buffalo rifle", "bull", "bull horns", "bullets", "bunk", "bunkhouse", "butte",
          "butter", 
          "cactus", "calf", "calfskin", "caliber", "California", "camp", "campfire", "Canada", "canter", "canyon",
          "cartridge", "castrate",
          "cattle", "cavalry", "chamber", "chapparal", "chaps", "Cheyenne", "chickens", "chief",
          "chili", "Christian", "chuckwagon", "church", "Civil War",
          "clear leather", "Clint Eastwood", "coach gun", "coffin", "Colorado", "Colt", "Colt Lightning Carbine",
          "come hell or high water", "Commanche", "confederate", 
          "copperhead", "cornbread", "corral", "cotton", "cottonmouth", "country", "courthouse", 
          "covered wagon", "cow", 
          "cowboy", "cow patty", "coyote", "creek", "cross", "cud", 
          "Dakota Territories", "dang", "darn", "dead man's hand", "dead or alive", "deer", "democrat", "deputy", "dern", "Derringer",
          "diamondback", 
          "diddly squat", "diggin a well", "dirty",
          "Dixie", "doesn't know his ass from a hole in the ground", "Dodge",
          "dog", "donkey", "dust", "duster", "dusty leather", "dynamite",
          "eagle", "elk", "estrus", 
          "farm", "fence", "ferrier", "fiddle", "firewood", "fireworks", "firing pin", "fishin", "fishin pole", 
          "flint and steel", "flintlock", "folks", "foreman", "fort", "front porch",
          "gallows", "gallup", "gambler", "gander", "gang", "gelding", 
          "gets my goose", "giddy up", "git", "gold", 
          "goose", "gosh", "gospel", "grandpa", "granny", "gravy", "grit", "grizzly", "gulley", "gunpowder", "guns", "gunslinger", 
          "gussied up", "gut",
          "hang him high",
          "hanging", "hangman", "hat", "hay", "hay bales", "headdress", "headstone", "heaven", "heifer", "hell", "henhouse", "Henry rifle", "herd",  
          "hissy fit", "hitching post", "hogs", 
          "holler", "holster", "hornet", "horses", 
          "horseshoe", "horse thieves", "hound dog", "hunting", "hushpuppy", "hymnal", 
          "Indians", "Indian territory", "iron sights",
          "jackrabbit", "jaw", "Jesus",
          "John Wayne", 
          "Kentucky", "kin", "kinfolk", "knee-high", "knife", "knuckle",
          "lariat", "lasso", "lever action",  
          "like a chicken with its head cut off", "livery and stable", "locomotive", "lope",
          "magazine", "magnum", "mama", "mare", "marshall", "medicine man", "mesa", "mesquite", "Mexico",  
          "mocassins", "molasses", "Montana", "Morgan horse", "mosquito", "mountain man", "mule", "mustang",
          "Navajo", "naw", "nit-pickin", "noose",
          "oak tree", "Oklahoma", "ore", "ornery", "outhouse", "overalls", "over yonder", "ox", "oxen", 
          "painted", "palamino", "panhandler", "pardner", "passel", "pepper", "pew", "piano",
          "a pig in shit", "pig's feet", "piddly", "Pinkertons", "pistol", "plains", "plantation", "plumb", "poker",
          "pony", "poor as a church mouse", "pork chops", "possum", "post-hole digger",  
          "preacher", "prospector",
          "quarter horse", "quicksand", 
          "ranch", "Rangers", "rascal", "rattler", "rawhide", "rebel", 
          "reckon", "recollection", "reel", "reins", "reload", "Remington", "remuda",
          "republican", "reservation", "reverend", "revolver", "rifle", "rimfire", "Rio Grande", "river",
          "riverboat", "roan", "rockin chair", "Rocky Mountains", "rod",
          "rooster", "ropin", "roust", "royal flush", "rural", "rustle up", "rut", 
          "saddle", "saddle bags", "saddlebred", "saddle horn", "saddle up", "sagebrush", "saloon", "sausage", "savannah", 
          "scalped", "scattergun", 
          "schoolhouse", "scope", "scripture", "sermon", "shallow grave", "sharpshooter", "sheriff", 
          "shoat", "shootin", "shotgun", "sideburns",  
          "sinner", "Sioux",
          "skedaddle", "skeeter", "slaughter", "slingshot", "slop bucket", "Smith & Wesson", "smoked", 
          "snow", "sow", "Spencer repeating rifle", "spitoon", "Springfield", "spurs", "stagecoach", "steamboat", "steer", "stirrups", "strawberry roan",
          "supper", "swamp", "switchback",
          "tack", "tarnation", "teepee", "Tennessee", "Texas", "these parts", "this is outlaw country",
          "thornbush", "then his horse threw a shoe", "thunderclouds", "tobacco", "tombstone", "totem", "tracked em all the way to Kansas",
          "trader", "trading post", "trail", "train", "trapper", "tribe",
          "trigger", "trot", "tuckered", "tumbleweed", "turnip greens", 
          "twine",
          "uncle", "undertaker", "varmint", "veterans", "Virginia",
          "wadn't", "wagon", "wagon train", "wagonwheel", "wanted poster", "water moccasin",
          "western", "West Virginia", "whiskey", "whittle", "whorehouse", 
          "Winchester", "work", "wrangler", "wrastlin", "Wyoming",
          "y'all", "yankee", "yeehaw", "yellow jacket", "yonder", "you betcha", "Yukon", "Yuma"
        ]
          
        ran_capital1 = words.sample.capitalize
        ran_capital2 = words.sample.capitalize
        ran_capital3 = words.sample.capitalize
        ran_capital4 = words.sample.capitalize
        ran_capital5 = words.sample.capitalize
        
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