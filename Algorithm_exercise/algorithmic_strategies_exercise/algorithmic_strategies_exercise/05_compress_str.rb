# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    len = 0
    arr = str.split("")
    new_arr = []
    (1...arr.length - 1).each do |index|
        if arr[index] != arr[index - 1] && index !=
            new_arr << [len, arr[index - 1]]
            len = 0
        else
            len += 1
        end
    end
    return new_arr.join
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
