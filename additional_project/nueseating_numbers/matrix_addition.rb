def matrix_addition(matrix_a, matrix_b)
    index = 0
    new_arr = []
    big_arr = []
    while index < matrix_a.length
        id2 = 0
        while id2 < matrix_a[index].length
            new_arr << matrix_a[index][id2] + matrix_b[index][id2]
            id2 += 1
        end
        big_arr << new_arr
        new_arr = []
        index += 1
    end
    big_arr
end
matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]