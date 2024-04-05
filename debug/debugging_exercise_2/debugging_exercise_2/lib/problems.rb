# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
    arr = []
    largest = 0
    (2..num).each do |val|
        if num % val == 0
            arr << val
        end
    end
    arr.each do |char|
        if prime?(char)
            if char >= largest 
                largest = char
            end
        end
    end
    largest
end
def prime?(num)
    return false if num < 2
    (2...num).each do |val|
        if num % val == 0
            return false
        end
    end
    true
end
def unique_chars?(str)
    count = Hash.new(0)
    str.each_char do |char|
        count[char] += 1
        if count[char] > 1
            return false
        end
    end
    return true
end
def dupe_indices(arr)
    hash = Hash.new{ |hash, key| hash[key] = []}
    arr.each_with_index do |val, idx|
        hash[val] << idx
    end
    hash.select{|key, value| value.length > 1}
end
def ana_array(arr_1, arr_2)
    arr_2.each do |char|
        if !arr_1.include?(char) || arr_1.length != arr_2.length
            return false
        end
    end
    true
end