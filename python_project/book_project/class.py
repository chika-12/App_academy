class Dog:
    "Creating a dog class"

    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def sit(self):
        print("{} is sitting".format(self.name))
    
    def roll_over(self):
        print("{} is rolling over".format(self.name))

"""
my_dog = Dog("Billie", 9)
print(my_dog.age)
print(my_dog.name)
my_dog.sit()
my_dog.roll_over()
"""
class Car:
    "describes a car"

    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
        self.meter_reading = 0
    
    def describe_car(self):
        print("{} is a branded car for variable use made in {} and {} model".format(self.make, self.year, self.model))
    
    def read_meter(self):
        print(self.meter_reading)

    def update_meter(self, distance):
        self.meter_reading += distance
        print(self.meter_reading)
    
#my_car = Car("Benz", "glt", 2001)
#my_car.describe_car()
#my_car.read_meter()
#my_car.update_meter(45)
#my_car.read_meter()
#my_car.read_meter()
class Use:
    """ Describes how to use a car"""
    def __init__(self, power = 67):
        self.power = power

    
    def how_to_use(self):
        print("This car is good it has {} horse power".format(self.power))

class ElectricCars(Car):
    """ An electric car"""
    def __init__(self, make, model, year):
        super().__init__(make, model, year)
        self.battery = 44
        self.use = Use()
    
    def battery_info(self):
        print("{} cars has {} battery".format(self.make, self.battery))

My_electricCar = ElectricCars("Tesla", "Models", 2019)
My_electricCar.describe_car()
My_electricCar.battery_info()

My_electricCar.use.how_to_use()
