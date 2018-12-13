require 'pry'

class Owner

  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name, species = "human", pets = {:cats => [], :dogs => [], :fishes => []})
    @name = name
    @species = "human"
    @pets = {:cats => [], :dogs => [], :fishes => []}
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
    return "I am a human."
  end

  def buy_fish(fish_name)
   bought_fish = Fish.new(fish_name)
   @pets[:fishes] << bought_fish
  end

  def buy_cat(cat_name)
   bought_cat = Cat.new(cat_name)
   @pets[:cats] << bought_cat
  end

  def buy_dog(dog_name)
    bought_dog = Dog.new(dog_name)
    @pets[:dogs] << bought_dog
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
    @pets.each do |animal, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end



end
