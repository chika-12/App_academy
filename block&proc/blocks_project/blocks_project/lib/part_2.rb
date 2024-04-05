def all_words_capitalized?(arr)
    arr.all? {|val| val == val.capitalize}
end
 def no_valid_url?(arr)
    url = [".com", ".net", ".io", ".org"]
    arr.none? do |val|
        url.any? {|char| val.end_with?(char)} #There is a method called end_with?
    end
 end
 def any_passing_students?(arr)
    arr.any? do |student|
        grade =  student[:grades]
        next false if grade.nil? || grade.empty?
        average = (grade.sum / grade.length).to_f
        average >= 75
    end
 end