class Ninja
    attr_reader :name, :rank
  
    def initialize(name, rank)
      @name = name
      @rank = rank
    end
  
    def train
      puts "#{name} trains hard to improve their skills."
    end
  end
  
  class RasenganUser < Ninja
    def can_use_rasengan?
      true
    end
  end
  
  naruto = RasenganUser.new("Naruto Uzumaki", "Hokage")
  puts naruto.can_use_rasengan? 
  naruto.train