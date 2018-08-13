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
  return_array = []
  grade_hash.each do |key|
    return_array << grade_hash[key][assignment_number - 1]
  end
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.


# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.


# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F

# Return a hash of students and their final letter grade, as determined
# by their average.


# Return the average for the entire class.


# Return an array of the top `number_of_students` students.

