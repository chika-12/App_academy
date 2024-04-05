doubler = Proc.new { |num| num * 2} #defining a proc and a block 
#p doubler.call(67)
is_even = Proc.new do |num|
    if num % 2 == 0
        true
    elsif num % 3 == 0 && num % 2 != 0
        puts "Power"
        return
    else
        false
    end
end
div = Proc.new { |num| num / 2 * num}
#p is_even.call(9)
def num_add(num1, num2, proc) # passing a proc to a method
    sum = num1 + num2
    proc.call(sum)
end
p num_add(10, 20, is_even)
p num_add(2, 4, div)
#Passing a block to a method that accepts a proc
#we write a function that accepts a proc and calls it with a block passed to it
def mul(num1, num2, &proc)
    product = num1 * num2
    proc.call(product)
end
p mul(3, 4) {|num| num * 2}
#& turns a block into a proc and a proc into a block
p mul(2, 4, &is_even) # I passed a proc to this function instead of a block by using & on the proc