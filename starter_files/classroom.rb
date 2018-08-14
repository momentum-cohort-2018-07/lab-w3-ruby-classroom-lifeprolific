# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.

def assignment_score (grade_hash, student_name, assignment_number)
  grade_hash[student_name][assignment_number - 1]
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.

def assignment_scores (grade_hash, assignment_number)
  grade_hash.values.map {|grades| grades[assignment_number - 1]}
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.

def assignment_average_score (grade_hash, assignment_number)
  scores = assignment_scores(grade_hash, assignment_number)
  scores.sum / scores.length
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.

def averages (grade_hash)
  grade_hash.transform_values {|scores| scores.sum/scores.length}
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F

def letter_grade(score)
  letter_dictionary = []
  letter_dictionary[0] = "F"
  letter_dictionary[1] = "F"
  letter_dictionary[2] = "F"
  letter_dictionary[3] = "F"
  letter_dictionary[4] = "F"
  letter_dictionary[5] = "F"
  letter_dictionary[6] = "D"
  letter_dictionary[7] = "C"
  letter_dictionary[8] = "B"
  letter_dictionary[9] = "A"
  letter_dictionary[10] = "A"

  letter_dictionary[(score/10).floor]
end

# Return a hash of students and their final letter grade, as determined
# by their average.

def final_letter_grades(grade_hash)
  grade_hash.transform_values {|scores| letter_grade(scores.sum/scores.length)}
end

# Return the average for the entire class.

def class_average(grade_hash)
  sum = 0
  count = 0
  grade_hash.each_value do |grades|
    sum += grades.sum
    count += grades.count
  end
  sum/count
end

# Return an array of the top `number_of_students` students.

def top_students (grade_hash, number_of_students)
  student_hash = grade_hash.transform_values {|grades| grades.sum / grades.length}
  sorted_hash = student_hash.sort_by{|key,value| value}.reverse
  output = sorted_hash.slice(0, number_of_students).to_h.keys
end