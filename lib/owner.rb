class Owner
  attr_reader :name, :species
#cannot change name /can have a name
@@all = []

  def initialize(name)
  @name = name
  @species = "human"
    @@all << self
  end
 def say_species
   "I am a #{@species}." 
 end
 
 def self.all 
   
   @@all
 end
 
 def self.count 
   @@all.count
 end
 def self.reset_all
   @@all = []
 end
 
 def cats 
   Cat.all.select{|cat| cat.owner == self}
 end
  def dogs 
   Dog.all.select{|dog| dog.owner == self}
 end
 
 def buy_cat(cat_name)
  Cat.new(cat_name, self) 
 end
 def buy_dog(dog_name)
  Dog.new(dog_name, self) 
 end
 def walk_dogs 

   dogs.each {|dog| dog.mood = "Happy".downcase}
 end
 def feed_cats
   cats.each {|cat| cat.mood = "Happy".downcase}
 end
 
 def sell_pets
   dogs.each { |dog| dog.mood = "nervous"}
   dogs.each { |dog| dog.owner = nil }
   cats.each { |cat| cat.mood = "nervous"}
   cats.each { |cat| cat.owner = nil}
 
 end
 
 def list_pets
   return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

   dogs.each {|mood|.downcase dog.mood = "Happy"}

 end
 
end