from city import count
"""Testing count"""
while True:
    country_name = input("Enter name of country or q/Q to quit: ")
    if country_name.lower() == 'q':
        break

    city_name = input("Enter name of city: ")
    if city_name.lower() == 'q':
        break
    full_length = count(country_name, city_name)
    print(full_length)