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
squares = []
for index in range(0, 20, 2):
    value = index ** 2
    squares.append(value)
print (squares)
print(min(squares))#Returns the smallest value in the list 
print(max(squares))#Returns the biggest value in the list
print(sum(squares))#Sums all the values in the list
#List Comprehension can be used to make codes more readable and more comprehensive
'''
    It shortens the codes
'''
num2 = [value ** 2 for value in range(0, 20)] #Shortens the process of creating this codes or output
print (num2)