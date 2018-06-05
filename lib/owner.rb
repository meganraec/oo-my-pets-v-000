class Owner
  attr_accessor :owner, :pets, :name
  attr_reader :species
  attr_writer :fish, :dogs, :cats

  @@owners = []

  def initialize(owner)
    @species = "human"
    @owner = owner
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def plays_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fish].each {|fish| fish.mood = "happy"}
  end

  def list_pets
    self.pets
  end
end
