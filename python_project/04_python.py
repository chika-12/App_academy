#Tuples
'''
Tuples are immutable list meaning they are list that can not be changed
tuples uses parenthesis instead of square bracket
rectangle = (200, 20)defining the length and breath or a rectangle
We can also access individual element by using indices just like in list 
'''
#rectangle = (2,3,4,5,6,7)
#print (rectangle)
#rectangle[3] = 34 #can not reassign this
#                                               Conditions
'''
The if statement is used to check for certain conditions

'''
cars = ["range rover", "mercedes benz", "bmw", "toyota", "land rover"]
for car in cars:
    if car == "bmw":
        print(car.upper())
    else:
        print(car.title())

print ("These are the cars")
        
#Using if conditions
arr = []
for index in range(0, 30):
    if index % 2 == 0 or index % 3 == 0:
        arr.append(index)
print(arr)
print(19 in arr) #To check if a value is in a collection of value
n = [0,2,3]
if n[1] not in arr:
    print("The data is not complete")
else:
    print("The data is complete")