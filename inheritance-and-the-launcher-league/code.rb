class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end


  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
  def backstory
    "FastFastFAST"
  end

  def speed_in_mph
    super * 1000
  end

  def powers
    "super speed"
  end

  def weakness
    "flat tires"
  end

end

class Brawler < SuperHero

  def powers
    "really good at fighting"
  end

  def weakness
    "I like to fight a lot"
  end

  def backstory
    "I like 2 fite."
  end

  def health
    super * 20
  end
end

class Detective < SuperHero
  def backstory
    "I'm just really good at google"
  end

  def powers
    "I can find anything"
  end

  def weakness
    self.secret_identity
  end

  def speed_in_mph
    super / 6
  end
end

class Demigod < SuperHero

  def powers
    "half omnipotent"
  end

  def weakness
    "no one knows which half is godlike"
  end

  def backstory
    "Half woman, half god. My name's demi."
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero

  def powers
    "I can find that squeak for ya!"
  end

  def weakness
    "can't throw anything out."
  end

  def backstory
    "Master of none... sigh."
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero

  def powers
    "amazing swimmer"
  end

  def weakness
    "phone isn't waterproof."
  end

  def home
    "Earth's Oceans"
  end

  def backstory
    "I like turtles."
  end

  def fans_per_thousand
    5
  end

  def psychic?
    true
  end
end

# Speedster-s run 1000 times as fast as a normal SuperHero!
# The Brawler is 20 times as healthy as a normal SuperHero!
# The Detective weakness is their own secret_identity!
# The Detective is also slow - they are 1/6th as fast as their fellow superheroes.
# The Demigod's home is on the "Cosmic Plane".
# The JackOfAllTrades isn't a Human - they're an "Alien", and their home is "Venus"!
# Waterguy only has 5 fans per thousand. Poor `Waterguy!``
# Maybe that's because Waterguy's home is "Earth's Oceans"?
# At least Waterguy is Psychic, as is the JackOfAllTrades.
