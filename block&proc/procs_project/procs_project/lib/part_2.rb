def reverser(str, &proc)
    str.reverse!
    proc.call(str)
end
def word_changer(sentence, &proc)
    arr = sentence.split(" ")
    new_arr = []
    arr.each do |char|
        new_arr <<  proc.call(char)
    end
    new_arr.join(' ')
end
def greater_proc_value(num, proc, prc)
    if proc.call(num) > prc.call(num)
        return proc.call(num)
    else
        return prc.call(num)
    end
end
def and_selector(arr, proc, prc)
    new_arr = []
    arr.each do |val|
        if proc.call(val) && prc.call(val)
            new_arr << val
        end
    end
    new_arr
end
def alternating_mapper(arr, proc, prc)
    new_arr = []
    arr.each_with_index do |char, idx|
        if idx % 2 == 0
          new_arr << proc.call(char)
        elsif idx % 2 == 1
            new_arr << prc.call(char)
        end
    end
    new_arr
end