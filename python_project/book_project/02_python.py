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
"""
matrix = [
    [1, 4, 6],
    [2, 3, 8],
    [1, 7, 9]
]
num = list(map(lambda y: list(map(lambda x: x**x, y)),matrix))
print(num)