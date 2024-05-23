def strange_sums(arr)
    sum = 0
    index = 0

    while index <= arr.length - 1
        idx = index
        while idx <= arr.length - 1
            if arr[index] + arr[idx] == 0
                sum += 1
            end
            idx += 1
        end
        index += 1
    end
    sum
end
p strange_sums([2, -3, 3, 4, -2])     # 2
p strange_sums([42, 3, -1, -42])      # 1
p strange_sums([-5, 5])               # 1
p strange_sums([19, 6, -3, -20])      # 0
p strange_sums([9])                   # 0