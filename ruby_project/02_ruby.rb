def sort_algorithm(arr)
    sorted = false
    while !sorted
        sorted = true

        (0...arr.length - 1).each do |index|
            if arr[index] > arr[index + 1]
                arr[index], arr[index + 1] = arr[index + 1], arr[index]
                sorted = false
            end
        end
    end
    return arr
end
numbers = [6,7,4,8,9,1,2,3]
p sort_algorithm(numbers)
