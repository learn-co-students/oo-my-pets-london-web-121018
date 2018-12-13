require 'pry'

class Owner

attr_accessor :name, :pets
attr_reader :species

@@all = []

def initialize (name)
  @name = name
  @species = "human"
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @@all << self
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{@species}."
end

def buy_fish(name)
  newfish= Fish.new(name)
  @pets[:fishes] << newfish
end

def buy_cat(name)
  newcat= Cat.new(name)
  @pets[:cats] << newcat
end

def buy_dog(name)
  newdog = Dog.new(name)
  @pets[:dogs] << newdog
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |type, pet|
    pet.each do |individual|
      individual.mood = "nervous"
    end
  end
  @pets = {}
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count  } cat(s)."
end



end
