#changing adding and removing from a list
motor = ["Honda", "Camry","Toyota"]
print(motor)
motor[1] = "Bugati"
print(motor)
#Adding to a list can be done by using the append method
motor.append("Venza")
print(motor)
#The insert method can be used to add element to a list at any index
motor.insert(1, "Machine")
print(motor)
#The del statement can be used to remove element from a list at any index
del motor[1]
print(motor)
#The pop() is used to remove elements from the end of a list
#To pop at any index you pass the index to pop
new_non = motor.pop()
print(new_non)
#Another method for removing items from the list is the remove method
motor.remove("Honda")
print(motor)
#You can also save the removed value into a variable to work with it
# Organizing a List
'''
The sort method can be used to organize a list the sort method organizes a list in increasing order or alphabetical
order. The sort function sorts a list permanently
'''
animals = ["Goat", "Cow", "Chicken", "Cats", "Pigs"]
animals.sort()
print(animals)
animals.sort(reverse=True)# To sort the list in reverse
print(animals)
'''
    To sort a list temporarily is by using the sorted method 
    Use: sorted(animal). It can also accept the reverse function
'''
#The reverse method can be used to print a list in reverse order
#animals.reverse()

#Finding the length of a list 
print(len(animals)) 