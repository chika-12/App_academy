from first_test import formatted
"""Importing a function"""
print("Enter your name or q to quit the program")
while True:
    name = input("Enter your first name: ")
    if name == 'q':
        break
    second_name = input("Enter second name: ")
    if second_name == 'q':
        break
    full_name = formatted(name, second_name)
    print(full_name)
