"""
with open("file.txt") as file:
    contents = file.read()
print(contents)
"""

#printing a file line by line
"""
num =1
with open("file.txt") as file:
    for line in file:
        print(line)
        print("{} line".format(num))
        num += 1
"""
"""
#Searching pi_string if we can find the birthday of the user
pi_string = "3.14159265358979323846264338327950288419716939937510"
birth_day = input("Enter your birth day in mmddyy form: ")
if birth_day in pi_string:
    print("Your birthday is in pi_string")
else:
    print("Birthday not found")
"""
"""
with open("love_life", "w") as file:
    file.write("What a time to be a software engineer")
"""
"""This program creates a list of users name"""
"""
name = input("Enter your name: ")
with open("names_of_users", "a")as file:
    file.write("{}\n".format(name))
"""
