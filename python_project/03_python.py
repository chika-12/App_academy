'''
#Working with list (Looping through a list)
school = ["Fds", "rd", "bloom", "galaxy", "GRAND"]
for index in school:
    print(f"{index.title()}, is a great citadel of learning")
#The python range function is used to generate a range of numeric list
for i in range(0, 9):
    print(i)
num = list(range(0, 10)) #Generating a list of numbers and saving it into a variable
print(num)
#We can add a third argument to range to specify a skip
even_num = list(range(0, 12, 2))
print(even_num)
'''
#Generating sequence of squared numbers
'''
squares = []
for index in range(0, 20, 2):
    value = index ** 2
    squares.append(value)
print (squares)
print(min(squares))#Returns the smallest value in the list 
print(max(squares))#Returns the biggest value in the list
print(sum(squares))#Sums all the values in the list
#List Comprehension can be used to make codes more readable and more comprehensive

#It shortens the codes

num2 = [value ** 2 for value in range(0, 20)] #Shortens the process of creating this codes or output
print (num2)
'''
#Generating the cube root of numbers ranging from 1 to 10
num = [value ** 3 for value in range(1, 11)]
print (num) 
#Slicing is use to cut a list according to the specified indices
print(num[0:4])#Without a starting index python will start at 0
#You can use slice to loop through a list lets loop through the first 4 element of our animal list
animals = ["Lion", "Tiger", "Antelope", "Elephant", "Goat", "Sheep", "Cat", "Cow", "Pig", "Wolf", "Bull", "Fish"]
print("Here are the first four elements of our animal list")
new_list = []
for animal in animals[:4]:
    new_list.append(animal)

print(new_list)
#Making a copy of our animal list
new_animal = animals[:]#This how we make a copy of a list.
print(new_animal)
