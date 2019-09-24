class Dog

    attr_reader :name 
    attr_accessor:owner, :mood
   
   @@all = []
   
   def initialize(name,owner)
     @name = name
     @owner= owner
     @mood = "nervous"  
     @@all << self
    end
  
    def mood
      @mood 
    end
    
    def self.all
      @@all
    end
    
    def dogs
    Dog.all.select{|cat|cat.owner==self}
    end
  
end



