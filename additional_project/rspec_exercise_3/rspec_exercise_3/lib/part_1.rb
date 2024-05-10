def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |val|
        if num % val == 0
            return false
        end
    end
    true
end
def nth_prime(num)
    val = 1
    prime_array = [];
    while prime_array.length < num
        if is_prime?(val)
            prime_array << val
        end
        val += 1
    end
    return prime_array[-1]    
end
def prime_range(min, max)
    index = min
    arr = []
    while index <= max
        if is_prime?(index)
            arr << index
        end
        index += 1
    end
    arr
end