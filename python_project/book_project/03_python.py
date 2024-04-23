"""
num = 0

while num < 10:
    num += 1
    if num % 2 == 0:
        continue
    print(num)
"""
"""
num = int(input("Enter size of list: "))
unconfirmed_users = []
for val in range(num):
    unconfirmed_users.append(input("Enter your list item: "))

#for idx in value:
    #print(idx)

print("These are the unconfirmed users")
print (unconfirmed_users)
val = input("Should we confirm them? enter yes/no: ")
if val == "yes":
    confirmed_users = []
    while unconfirmed_users:
        user = unconfirmed_users.pop()
        confirmed_users.append(user)
        print("{} has been confirmed".format(user))
    print(confirmed_users)
    print(unconfirmed_users)
elif val == "no":
    print("No user has been confirmed")
else:
    print("Your input is wrong bye")
"""
flag = True
responses = {}
while flag == True:
    print("Welcome To The Low Call Show")
    name = input("What is your name: ")
    response = input("Which city will you like to visit: ")
    responses[name] = response
    value = input("Would you like to invite a friend on the show? yes/no: ")
    if value == "no":
        flag = False
print(responses)