def tribonacci_number(numbers)
    if numbers == 1
        return 1
    elsif numbers == 2
        return 1
    elsif numbers == 3
        return 2
    else
        arr = [1, 1, 2]
        arr.each do |num|
            if arr.length < numbers
                arr << arr[-1] + arr[-2] + arr[-3]
            else
                break
            end
        end
        return arr[-1]
    end
end
p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274