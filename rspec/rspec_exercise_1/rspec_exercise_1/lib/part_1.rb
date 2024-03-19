
def average(num_1, num_2)
    sum = num_1 + num_2
    av = sum / 2.0
    return av
end
def average_array(arr)
    num = arr.length + 0.0
    sum = arr.sum
    av = sum / num
    return av
end
def repeat(str, num)
    new_str = ""
    new_str = str * num
    new_str
end
def yell(str)
    new_str = str.upcase + "!"
    new_str
end
def alternating_case(str)
    arr = str.split(" ")
    num = arr.length
    big_arr = []
    num.times do |val|
        if val % 2 == 0
            big_arr << arr[val].upcase
        else
            big_arr << arr[val].downcase
        end
    end
    return big_arr.join(" ")
end