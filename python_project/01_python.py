message = "Hello my name is mark"
print(message)

message = "Lelah went to the bus stop"
print(message)
name = "lady ada lovelace"
print(name.title()) # A method is a used to perform specific function in python
first_name = "chika"
last_name = "mark"
full_name = f'{first_name} {last_name}'# You can insert a variable into a string by using f which stands for format
print(f"Hello {full_name.title()}")
#the /t is for inserting tabs while /n is for newline character
#rstrip() is used to remove extra newline character in a string. Use:variable_name.rstrip()
#python ignores underscore been assigned to numbers 
num = 1_0_0_0 #  the underscore is ignored by python 
print (num)
#Multiple Assignment
w,r,t = 1,2,4
print(w)
print(r)
print(t)
#Constants in python are indicated using capital letters in variable declaration
MAX_NUM = 56
print(MAX_NUM)
MAX_NUM = 29
print(MAX_NUM)
import this
#List
names_of_pupils = ["chika", "mark", "mary", "emmanuel"]
print(names_of_pupils[0].title()) #Accessing individual element in a list.
