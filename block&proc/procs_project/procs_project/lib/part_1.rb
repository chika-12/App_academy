def my_map(arr, &proc)
    new_arr = []
    arr.each do |num|
        new_arr << proc.call(num)
    end
    new_arr
end
def my_select(arr, &proc)
    new_arr = []
    arr.each do |num|
        if proc.call(num)
            new_arr << num
        end
    end
    new_arr

end
def my_count(arr, &proc)
    num = 0
    arr.each do |val|
        if proc.call(val)
            num += 1
        end
    end
    num
end
def my_any?(arr, &proc)
    arr.each do |num|
        if proc.call(num)
            return true
        end
    end
    false
end
def my_all?(arr, &proc)
    arr.each do |num|
        if !proc.call(num)
            return false
        end
    end
    true
end
def my_none?(arr, &proc)
    arr.each do |num|
        if proc.call(num)
            return false
        end
    end
    true
end