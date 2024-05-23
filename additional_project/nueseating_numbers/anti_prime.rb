def anti_prime?(number)
    first_count = 0
    second_count = 0
    main_count = 0
    (1...number).each do |num|
        if number % num == 0
            main_count += 1
        end
        (1..num).each do |val|
            if num % val == 0
                second_count += 1
            end
        end
        if second_count >= first_count
            first_count = second_count
        end
        second_count = 0
    end
    if first_count > main_count
        return false
    else
        return true
        
    end
end
p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false