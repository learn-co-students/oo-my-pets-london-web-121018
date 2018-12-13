require 'pry'
class Owner

@@all = []

attr_reader :species, :pets
attr_accessor :name, :pets

def initialize (name)
  @species = "human"
  @pets = {:fishes => [], :dogs => [], :cats => []}
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
  "I am a #{self.species}."
end

def buy_fish (name)
  @pets[:fishes] << Fish.new(name)
end

def buy_cat (name)
@pets[:cats] << Cat.new(name)
end

def buy_dog (name)
  @pets[:dogs] << Dog.new(name)
end

def walk_dogs
  self.pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  self.pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
  self.pets[:dogs].each {|dog| dog.mood = "nervous"}.clear
  self.pets[:cats].each {|cat| cat.mood = "nervous"}.clear
  self.pets[:fishes].each {|fish| fish.mood = "nervous"}.clear

end

def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end
end
