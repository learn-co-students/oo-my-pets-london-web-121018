require "pry"
require "Cat.rb"
require "Dog.rb"
require "Fish.rb"


class Owner
  attr_accessor :pets, :name
  attr_reader :species


  @@all = []

  def initialize(name, species="human")
    @name = name
    @pets = {
      fishes: [],
      cats:[],
      dogs: []
    }
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
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
    @pets.each_value do |pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end


#test

# human = Owner.new("human")
# human.buy_cat("measels")
# human.buy_dog("doggo")
# human.buy_fish("fishi")
# human.buy_fish("wettie")
# binding.pry
#
#  puts "end"
