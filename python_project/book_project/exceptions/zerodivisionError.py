while True:
    first_num = input("Enter first number: ")
    if first_num.lower() == "q":
        break
    try:
        first_val = int(first_num)
    except ValueError:
        print("Enter an integer")
        continue

    second_num = input("Enter second number: ")
    if second_num.lower() == "q".lower():
        break
    try:
        second_val = int(second_num)
    except ValueError:
        print("This is not an integer")
        continue

    try:
        answer = int(first_num) / int(second_num)
    except ZeroDivisionError:
        print("You cant divide by zero")
    else:
        print(answer)