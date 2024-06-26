# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
def coprime?(num_1, num_2)
    arr = []
    new_arr = []
    (2...num_1).each do |num|
        if num_1 % num == 0
            arr << num
        end
    end
    (2...num_2).each do |val|
        if num_2 % val == 0
            if arr.include?(val)
                return false
            end
        end
    end
    return true
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
