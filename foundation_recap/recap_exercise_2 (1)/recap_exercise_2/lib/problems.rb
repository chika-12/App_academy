# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    mutiple_1 = []
    multiple_2 = []
    cm = []
    if num_1 > num_2
        n = num_1
    else
        n = num_2
    end
    (1..n).each do |val|
        mutiple_1 << val * num_1
    end
    (1..n).each do |value|
        multiple_2 << value * num_2
    end
    mutiple_1.each do |num|
        if multiple_2.include?(num)
            cm << num
        end
    end
    return cm.min
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    bigram = []
    hash = Hash.new(0)
    str.each_char.with_index do |val, idx|
        if idx < str.length - 1
            bigram << str[idx] + str[idx + 1]
        end
    end
    bigram.each do |char|
        hash[char] += 1
    end
    max_num = 0
    max_str = nil
    hash.each do |k, v|
        if v > max_num
            max_num = v
            max_str = k
        end
    end
    return max_str
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        hash = Hash.new(0)
        self.each do |k, v|
            hash[v] = k
        end
        return hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        self.each_with_index do |num_1, idx|
            self[(idx + 1)..-1].each do |val|
                if num_1 + val == num
                    count += 1
                end
            end
        end
        count 
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        prc ||= Proc.new {|a, b| a <=> b}

        sorted = false

        while !sorted
            sorted = true

            (0...self.length - 1).each do |val|
                if prc.call(self[val], self[val + 1]) == 1
                    self[val], self[val + 1] = self[val + 1], self[val]
                    sorted = false
                end
            end
        end
        self       
    end
end
