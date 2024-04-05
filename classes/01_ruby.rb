class Cat
    @@num_wheels = 4 #class variables
    num_wheels = 3 
    def initialize(name, color, age)
        @name = name #Instance variables
        @color = color
        @age = age
    end
    def get_name #getters
        @name
    end
    def get_color
        @color
    end
    def get_age
        @age
    end
    def num_wheels
        @@num_wheels
    end
    def age=(num)
        @age = num
    end
end
cat_1 = Cat.new("bruno", "brown", 8) # Cat instance 
cat_2 = Cat.new("catal", "white", 2)
p cat_1.age = 67
p cat_1.get_age
p cat_2.num_wheels
p cat_1.num_wheels