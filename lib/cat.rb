class Cat
  attr_reader :name
  attr_accessor :mood
  ALL = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    ALL << self
  end
end
