# code here!

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster

    def add_student(name, grade)
        @roster[grade].nil? ? @roster[grade] = [name] : @roster[grade] << name
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end