class Confection
    def initialize(name)
      @name = name
    end
  
    def prepare
      puts "#{@name}: Baking at 350 degrees for 25 minutes."
    end
  end
  
  class Cupcake < Confection
    def initialize(name, frosting_type)
    super(name)
      @frosting_type = frosting_type
    end
  
    def prepare
      super
      puts "#{@name}: Applying #{@frosting_type} frosting."
    end
  end
  
  class BananaCake < Confection
  end
  
  cupcake = Cupcake.new("Cupcake", "Pistachio")
  cupcake.prepare
  
  banana_cake = BananaCake.new("Banana Cake")
  banana_cake.prepare
