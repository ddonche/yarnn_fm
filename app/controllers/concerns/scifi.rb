module Scifi
    extend ActiveSupport::Concern
    
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
  
end