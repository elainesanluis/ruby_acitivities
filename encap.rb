class Ninja
    def initialize(name, rank, chakra_level)
      @name = name
      @rank = rank
      @chakra_level = chakra_level.to_i
    end

    def train
        @chakra_level += 20
        puts "#{@name} has increased chakra to #{@chakra_level}!"
    end
end

shinobi = Ninja.new("Naruto", "Hokage", 100)
shinobi.train