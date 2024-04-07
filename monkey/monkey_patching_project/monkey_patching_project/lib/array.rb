# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span()
    if self.length > 0
        num = self.max
        num2 = self.min
        num3 = num - num2
        return num3
    else
        return nil
    end
  end
  def average()
    if self.length > 0
        sum1 = self.sum + 0.0
        ave = sum1 / self.length 
        return ave
    else
        return nil
    end
  end
  def median()
    self.sort!
    if self.length > 0
        if self.length % 2 == 0
            num = self[(self.length / 2) - 1] 
            num2 = self[(self.length / 2)]
            num3 = (num + num2) / 2.0
            return num3
        end
        if self.length % 2 == 1
            num = self[(self.length / 2)]
            return num
        end
    else
        return nil
    end
  end
  def counts()
    hash = Hash.new(0)
    self.each do |char|
      hash[char] += 1
    end
    hash
  end
  def my_count(val)
    count = 0
    self.each do |char|
      if char == val
        count += 1
      end
    end
    count
  end
  def my_index(val)
    arr = []
    if self.include?(val)
      self.each_with_index do |char, idx|
        if char == val
          arr << idx
        end
      end
      if arr.length > 1
        return arr.min
      else
        return arr[0]
      end
    end
    return nil
  end
  def my_uniq()
    new_arr = []
    self.each do |char|
      if !new_arr.include?(char)
        new_arr << char
      end
    end
    return new_arr
  end
  def my_transpose()
    size = self.length
    transpose = Array.new(size) {Array.new(size)}
    (0...size).each do |idx|
      (0...size).each do |index|
        transpose[index][idx] = self[idx][index]
      end
    end
    return transpose
  end
end
