class Owner

  attr_accessor :pets, :name, :fish, :cat, :dog
  attr_reader :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all 
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @fish = Fish.new(name)
    @pets[:fishes] << @fish
  end

  def buy_cat(name)
    @cat = Cat.new(name)
    @pets[:cats] << @cat
  end

  def buy_dog(name)
    @dog = Dog.new(name)
    @pets[:dogs] << @dog
  end

  def walk_dogs
     @pets[:dogs].each {|element| element.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|element| element.mood = "happy"}
  end

  def feed_fish
  @pets[:fishes].each {|element| element.mood = "happy"}
  end

  def sell_pets
    @pets[:fishes].each {|element| element.mood = "nervous"}
    @pets[:cats].each {|element| element.mood = "nervous"}
    @pets[:dogs].each {|element| element.mood = "nervous"}
    @pets.clear
  end

  def list_pets

    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
end