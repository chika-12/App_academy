alien_color = "blue"
if alien_color == "green":
    print("player just earned 5 points")
else:
    print("No points earned")

available_toppings = ["Pepper", "Onion", "Salt", "Beef", "Salad", "Cocktail"]
requested_toppings =["Seasoning","Onion","Salt","Beef","Bama"]
for request in requested_toppings:
    if request in available_toppings:
        print("Adding {} to pizza".format(request))
    else:
        print("{} not available".format(request))
        #DICTIONARIES
book = {'name': 'Basic science', 'published date': 1994, 'Author': 'Michael', 'Publishing company': 'Mac'}
print(book['name']) 