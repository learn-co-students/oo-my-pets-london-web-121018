class Cat
  def initialize (name, mood = "nervous")
    @name = name
    @mood = mood
  end

  attr_reader :name
  attr_accessor :mood


end
