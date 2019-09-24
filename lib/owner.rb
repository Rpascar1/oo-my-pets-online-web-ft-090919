
class Owner
  attr_reader :name, :species

  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species= "human"
    @@all << self
    @@count +=1
  end

  def say_species
    p "I am a #{@species}." 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count 
  end
  
  def self.reset_all
    @@count = 0
  end
  
  def cats
    Cat.all.select{|cat|cat.owner==self}
  end    

  def dogs
    Dog.all.select{|dog| dog.owner==self}
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end
end