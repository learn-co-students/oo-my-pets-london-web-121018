class Owner
  # code goes here
    #Class methods
    #all returns all instances of Owner that have been created (FAILED - 1)
    #count returns the number of owners that have been created (FAILED - 2)
  #   ::count can reset the owners that have been created (FAILED - 3)

  attr_accessor :name, :pets


  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
     @@all.clear
  end


  def initialize(name)
    @name = name
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
     @@all << self

 end

def species
  @species = "human"
end

def say_species
   "I am a #{species}."
end

def buy_fish(fish_name)

  @pets[:fishes] << Fish.new(fish_name)
end

def buy_cat(cat_name)

  @pets[:cats] << Cat.new(cat_name)
end

def buy_dog(dog_name)

  @pets[:dogs] << Dog.new(dog_name)
end


def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = 'happy'
  end
end
  #     walks the dogs which makes the dogs' moods happy (FAILED - 15)
def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end
  #     plays with the cats which makes the cats moods happy (FAILED - 16)
def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = 'happy'
  end
end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = 'nervous'
      end
      value.clear
    end

  end
  #     can sell all its pets, which make them nervous (FAILED - 18)
  def list_pets
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end

  #     can list off its pets (FAILED - 19)


end
