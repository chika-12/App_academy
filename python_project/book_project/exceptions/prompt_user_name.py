import json
"""This program prompts the user for name and saves the name in a .json file for reuse"""

filename = "user_name.json"
new_name = input("Enter your name: ")
try:
    with open("filename")as file:
        name = json.load(file)
except FileNotFoundError:
    user = input("Enter your name: ")
    with open("filename", "w")as obj:
        json.dump(user, obj)
        print("Thank you {} we will remember you next time".format(user))
else:
    print(f"Welcome back {name}")