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
    Dog::ALL.each {|dog| dog.mood = "happy"}
  end

  def plays_with_cats
    Cat::ALL.each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    Fish.ALL.each {|fish| fish.mood = "happy"}
  end
end

    #
    # describe "#walk_dogs" do
    #   it "walks the dogs which makes the dogs' moods happy" do
    #     dog = Dog.new("Daisy")
    #     owner.pets[:dogs] << dog
    #     owner.walk_dogs
    #     expect(dog.mood).to eq("happy")
    #   end
    # end
    #
    # describe "#play_with_cats" do
    #   it "plays with the cats which makes the cats moods happy" do
    #     cat = Cat.new("Muffin")
    #     owner.pets[:cats] << cat
    #     owner.play_with_cats
    #     expect(cat.mood).to eq("happy")
    #   end
    # end
    #
    # describe "#feed_fish" do
    #   it "feeds the fishes which makes the fishes' moods happy" do
    #     fish = Fish.new("Nemo")
    #     owner.pets[:fishes] << fish
    #     owner.feed_fish
    #     expect(fish.mood).to eq("happy")
    #   end
    # end
    #
    # describe "#sell_pets" do
    #   it 'can sell all its pets, which make them nervous' do
    #     fido = Dog.new("Fido")
    #     tabby = Cat.new("Tabby")
    #     nemo = Fish.new("Nemo")
    #     [fido, tabby, nemo].each {|o| o.mood = "happy" }
    #     owner.pets = {
    #       :dogs => [fido, Dog.new("Daisy")],
    #       :fishes => [nemo],
    #       :cats => [Cat.new("Mittens"), tabby]
    #     }
    #     owner.sell_pets
    #     owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
    #     [fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }
    #   end
    # end
    #
    # describe "#list_pets" do
    #   it 'can list off its pets' do
    #     owner.buy_fish("Bubbles")
    #     owner.buy_fish("Nemo")
    #     owner.buy_cat("Crookshanks")
    #     owner.buy_dog("Fido")
    #     owner.buy_dog("Snuffles")
    #     owner.buy_dog("Charley")
    #     expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
