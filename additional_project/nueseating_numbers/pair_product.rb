def pair_product(arr, num)
    index = 0
    product = 0
    while index <= arr.length - 1
        idx = index + 1
        while idx <= arr.length - 1
            if arr[index] * arr[idx] == num
                return true
            end
            idx += 1
        end
        index += 1
    end
    false
end
p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false