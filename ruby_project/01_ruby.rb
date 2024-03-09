#def arr_num(num)
    #common enumerables in ruby
  # p num.max # finds the maximum value in an array
   # p num.count# counts the number of elements in an array
   # p num.sum# Sums up the elements in an array
   # p num.one?{ |val| val.even?}
    #p num.all? { |val| p val if val.even?}
    #p num.none?{ |val| val.even?}
    #p num.any? { |val| val.even?}
#end
#num = [1,2,3,4,5,6,7,8,9,10]
#arr_num(num)


#                                      The splat operator
def arr_name(*arr)
    new_arr = []
    arr.each do |char|
        new_arr << char if char.even?
    end
    new_arr
end
p arr_name(1,2,3,5,6,7,8)

#   Using the splat operator to unpack 
def name(first_name, last_name)
    p "Hey " + first_name + " your last name is " + last_name
end
names = ["Chika", "Mark"]# Instead of passing an entire array as first argument we pass the array and unpack them
name(*names)
#double hash can also be used to unpack a hash
#                                           Buble sort
