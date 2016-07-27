class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
    @roster[grade] = []
    @roster[grade] << name
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
    @roster
  end
end
