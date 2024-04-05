def roman_numerals(roman_string)
    if !roman_string.is_a?(String) || roman_string.empty?
        return "Error!"
    end
    roman_string = roman_string.upcase
    index = roman_string.length
    idx = 0
    count = 0
    rol_hash = {"I" => 1, "V"=> 5, "X"=> 10, "L"=> 50, "C"=> 100, "D"=> 500, "M"=> 1000}
    num = 0;
    val = 0
    num2 = 0
    trac_val = 0
    str = "IXCM"
    if index < 2
        if rol_hash.include?(roman_string)
            num = rol_hash[roman_string]
        end
    end
    if index >= 2
        while (idx < index - 1)
            if !rol_hash.include?(roman_string[idx])
                return "Error"
            end
            if idx == index - 2
                num2 = rol_hash[roman_string[-1]]
            end
            if rol_hash[roman_string[idx]] > rol_hash[roman_string[idx + 1]]
                num += rol_hash[roman_string[idx]]
            elsif rol_hash[roman_string[idx]] == rol_hash[roman_string[idx + 1]]
                if val == 0
                    val = rol_hash[roman_string[-1]]
                end
                if !str.include?(roman_string[idx])
                    return "Error"
                else
                    if idx + 1 != index - 1
                        trac_val = rol_hash[roman_string[idx + 1]]
                        if trac_val == rol_hash[roman_string[idx + 2]] && trac_val == rol_hash[roman_string[idx +3]]
                            return "Error"
                        end
                        num += (rol_hash[roman_string[idx]] + rol_hash[roman_string[idx + 1]])
                    else
                        val += rol_hash[roman_string[idx]]
                    end
                    idx +=1
                    count += 1
                end
            elsif rol_hash[roman_string[idx]] < rol_hash[roman_string[idx + 1]]
                num += (rol_hash[roman_string[idx + 1]] - rol_hash[roman_string[idx]])
                idx += 1
            end
            idx += 1
        end
    end
    if count > 0 
        num += val
    else
        num += num2
    end
    return num
end