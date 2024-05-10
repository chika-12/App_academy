from random import randint
"""Building a class dice"""
class Dice:
    """Creating a dice"""
    def __init__(self, sides, roll):
        self.sides = sides
        self.roll = roll

    def roll_dice(self):
        side = randint(1, self.sides)
        print(side)

    def number_of_roll(self):
        """Creating the number of roll"""
        num = 0
        while num < self.roll:
            new_side = randint(1, self.sides)
            num += 1
        print("{} is the side after {} rolls".format(new_side,  self.roll))


my_dice = Dice(6, 20)
my_dice.roll_dice()
my_dice.number_of_roll()