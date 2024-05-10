def my_reject(array, &proc)
    new_arr = []
    array.each do |val|
        if !proc.call(val)
            new_arr << val
        end
    end
    new_arr
end
def my_one?(arr, &proc)
    count = 0
    arr.each do |val|
        if proc.call(val)
            count += 1
        end
    end
    if count == 1
        return true
    else
        return false
    end
end
def hash_select(hash, &proc)
    hash_new = Hash.new(0)
    hash.each do |k, v|
        if proc.call(k, v)
            hash_new[k] = v
        end
    end
    hash_new
end
def xor_select(arr, proc, prc)
    arr2 = []
    arr.each do |val|
        result1 = proc.call(val)
        result2 = prc.call(val)

        if (result1 || result2) && !(result1 && result2)
            arr2 << val
        end
    end
    arr2
end
def proc_count(num, procs)
    procs.count {|proc| proc.call(num)}
end