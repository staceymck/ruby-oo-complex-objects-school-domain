require 'pry'

class School
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= @roster[grade] = []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade].map do |name|
            name
        end
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students_list|
           sorted_roster[grade] = students_list.sort
        end
        sorted_roster
    end
end




