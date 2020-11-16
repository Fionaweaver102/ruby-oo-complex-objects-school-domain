class School  
attr_accessor :roster
attr_reader :student_name

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{|r,n| r[n] = []} 
    end 

    def add_student(student_name, grade)
        @roster[grade] << student_name
    end 

    def grade(grade)
       self.roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort!
        end 
    end 
end 
    