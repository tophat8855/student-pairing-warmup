class StudentsController < ActionController::Base
  def random
    @student = Student.all.sample
  end

  def pairing
    all_the_students = Student.all
    first = all_the_students.sample
    second = all_the_students.sample
    while first != second
      @pair = "#{first.name} #{second.name}"
      second = all_the_students.sample
    end
  end
end
