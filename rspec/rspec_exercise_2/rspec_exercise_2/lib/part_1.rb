def partition(arr, num)
    big_arr = []
    small_arr = []
    next_arr = []
    arr.each do |val|
        if val < num 
            small_arr << val
        end
        if val >= num
            next_arr <<  val
        end
    end
    big_arr = [small_arr, next_arr]
    return big_arr
end
def merge(hash_1, hash_2)
    new_hash = Hash.new(0)
    hash_1.each do |k, v|
        new_hash[k] = v
    end
    hash_2.each do |k, v|
        new_hash[k] = v
    end
    return new_hash
end
def censor(str, arr)
    new_arr = str.split(" ")
    vowel = "aeiou"
    new_arr.each do |val|
        if arr.include?(val.downcase)
            val.each_char.with_index do |char, idx|
                if vowel.include?(char.downcase)
                    val[idx] = '*'
                end
            end
        end
    end
    return new_arr.join(" ")
end
def power_of_two?(num)
    (0..num).each do |val|
        if 2 ** val == num
            return true
        end
    end
    return false
end


    