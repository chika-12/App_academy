#Understanding the lambda operation in python
""""
sum = lambda x, y: x + y
print("{}".format(sum(4, 8)))

#Using the map
def fahren(T):
    return ((float (9)/5) * T + 32)
def celsius(T):
    return ((float (9)/5) * T - 32)
T = [54, 67, 87.08, 54]
f = list(map(fahren, T))
c = list(map(celsius, f))
print(f)
print(c)
#Using the map and the lambda
print("-------------------------------------------------------------------------------")
val = list(map(lambda x: ((float(9)/5) * x + 32), T))
new_val = list(map(lambda y: ((float(9)/ 5) * y - 32), T))
print(val)
print(new_val)

matrix = [
    [1, 4, 6],
    [2, 3, 8],
    [1, 7, 9]
]
num = list(map(lambda y: list(map(lambda x: x**x, y)),matrix))
print(num)
"""
"""
saver = {"chika":{"first-name":"chika", "Second-name":"mark","Location":"Lagos"}, "Peter":{"first-name":"Peter", "Second-name": "Mary", "Location":"Abuja"}}
for name, user in saver.items():
    people = f"{user['first-name']} {user['Second-name']}"
    new_live = f"{user["Location"]}"
    print("Full name {}".format(people.title()))
    print("Location: {}".format(new_live.title()))
"""
"""
name_of_car = input("What car do you like: ")
if name_of_car[0] == 'C' or name_of_car[0] == 'c':
    print("{} is a useless car".format(name_of_car))
else:
    print("{} is a good car".format(name_of_car))
"""
"""
print("Welcome to Parkland beach\n\t We are at your beck and call")
num = int(input("How many people are in your group: "))
if num >= 8:
    print("You need a table")
else:
    print("You can go to table 3")
"""
prompt = "Lets have fun and play some games"
prompt += "\n Say something and I will repeat it: "
"""
message =""
while message != "quit":
    message = input(prompt)
    if message != "quit":
        print(message)
"""
active = True
while active:
    value = input("Enter some stuff: ")
    if value == "quit":
        active = False
    else:
        print(value)