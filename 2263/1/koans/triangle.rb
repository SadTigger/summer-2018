# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Style/GuardClause
# :reek:FeatureEnvy
def triangle(side_a, side_b, side_c)
  if (side_a + side_b <= side_c) || (side_a + side_c <= side_b) || (side_b + side_c <= side_a)
    raise TriangleError
  elsif (side_a == side_b) && (side_a == side_c)
    :equilateral
  elsif (side_a == side_b) || (side_a == side_c) || (side_b == side_c)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Style/GuardClause
