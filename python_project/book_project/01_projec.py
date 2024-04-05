"""
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
"""
"""
#The get() method is used retrive a value in a dictionary
animals = {"goats": 23, "Cows": 45, "Pigs": "No pigs available"}
new = animals.get('Pigs', 'None') 
print(new)
#The get() can be used to specify the error message incase the value is not found
#Looping through a dictionary
peoples_data = {
    "first_name": "Mark",
    "last_name": "Peter",
    "user_name": "Malak"
}
for k, v in peoples_data.items():
    print(f"{k} : {v}")

languages = {
    "Mark": "Python",
    "Peter": "C",
    "Mary": "Ruby",
    "Janet": "Java"
}
friends = ["Peter", "Mary"]
for name in languages:
    print(name.title())

    if name in friends:
        language = languages[name].title()
        print(f"\t{name.title()} I see you love {language}, please keep it up")
print("Done sending messages across")
if 'Chika' not in languages.keys(): #.keys() is used to get the key of the dictionary
    print("Please take our course")

for name in languages.values():
    print(f"{name}", end=" ")
"""
#programming = {"python", "ruby", "C", "python", "java" }
#print(programming)
#for i in programming:
    #print(i)
#   NESTING: We can nest dictionaries in a list or a list in a dictionary
students_bio = {"name": "Peter", "scores":[20, 30, 60, 70], "parents": {"father": "mark", "mother": "mary"}, "school":"sidehill"}
for k,v in students_bio.items():
    if k == "scores":
        print(f"{k} : {v}")
        val = v
        for score in val:
            print(score)
        break