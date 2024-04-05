class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new {|hash, k| hash[k] = []}
    end
    def name
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(str)
        @teachers << str
    end
    def enroll(str)
        if @students.length < @student_capacity
            @students << str
            return true
        end
        if @students.length >= @student_capacity
            return false
        end
    end
    def enrolled?(str)
        @students.each do |char|
            if char == str
                return true
            end
        end
        false
    end
    def student_to_teacher_ratio
        div = @students.length / @teachers.length
        return div
    end
    def add_grade(str, num)
        if enrolled?(str)
            @grades[str] << num
            return true
        end
        if !enrolled?(str)
            return false
        end
        
    end
    def num_grades(str)
        arr = @grades[str]
        return arr.length
    end
    def average_grade(str)
        if num_grades(str) != 0
            arr = @grades[str]
            sum = arr.sum / arr.length
            return sum
        else
            return nil
        end 
    end 
end
