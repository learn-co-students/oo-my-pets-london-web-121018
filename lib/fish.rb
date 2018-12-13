class Fish
  # code goes here

  attr_accessor :mood, :fish
  attr_reader :name

   def initialize(name, mood = "nervous")
     @name = name
     @mood = mood
   end

  end
