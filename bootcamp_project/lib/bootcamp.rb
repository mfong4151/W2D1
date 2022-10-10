class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{ |h, k| h[k] = [] }
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

    def hire(teacher)
        @teachers << teacher
    end 

    def enroll(student)
        if @student_capacity > @students.length 
            @students << student
            return true
        end
        false
    end 

    def enrolled?(student)
        return @students.include?student
    end

    def student_to_teacher_ratio
        return @students.length/@teachers.length

    end
    
    def add_grade(student, grade) #i don't understand why this isn't a setter

        return false if !@students.include?student

        @grades[student] << grade
        true

    end

    def num_grades(student)
        @grades[student].length
    end
    
    def average_grade(student)
        return nil if !@students.include?student or @grades[student] == []
        
        return @grades[student].sum/@grades[student].length

    end
end
