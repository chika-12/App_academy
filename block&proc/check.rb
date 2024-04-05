def any_passing_students?(arr)
    arr.any? do |student|
        grade =  student[:grades]
        next false if grade.nil? || grade.empty?
        average = (grade.sum / grade.length).to_f
        p average
        average >= 75
    end
 end
 st1 = [
    {name: "Peter", grades:[80, 77, 90]},
    {name: "Moses", grades:[30, 59, 90]}
 ]
 str = [
    {name: "mary", graedes:[20, 40, 57]},
    {name: "pat", grades:[60, 40, 29]}
 ]
 students_1 = [
          { name: "Alvin", grades: [70, 50, 75] },
          { name: "Warlin", grades: [80, 99, 95] },
          { name: "Vlad", grades: [100] },
        ]
 p any_passing_students?(st1)
 p any_passing_students?(str)
 p any_passing_students?(students_1)