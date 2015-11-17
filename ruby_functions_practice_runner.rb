#will load in functions from the file
require_relative "./ruby_functions_practice"

#### Example
test_result = return_10
puts "#{test_result} should = 10"


##### Integer Play
number_1 = 10
number_2 = 5
add_result = add( number_1, number_2 )
puts "#{number_1} + #{number_2} = #{add_result}"

subtract_result = subtract( number_1, number_2 )
puts "#{number_1} - #{number_2} = #{subtract_result}"

multiply_result = multiply( number_1, number_2 )
puts "#{number_1} * #{number_2} = #{multiply_result}"

divide_result = divide( number_1, number_2 )
puts "#{number_1} / #{number_2} = #{divide_result}"

##### String Play
test_string = "A string of length 21"
length_of_string = length_of_string(test_string)
puts "#{test_string} is length #{length_of_string}"

string_1 = "Mary had a little lamb, "
string_2 = "it's fleece was white as snow"
joined_string = join_string(string_1, string_2)
puts "Nursery rhyme: #{joined_string}"

#####Type conversion
string_1 = '1'
string_2 = '2'
add_result = add_string_as_number(string_1, string_2)
puts "#{string_1} + #{string_2} = 3, (not 12!)"

#####Conditional logic
first_month_string = number_to_full_month_name(1)
third_month_string = number_to_full_month_name(3)
ninth_month_string = number_to_full_month_name(9)
puts "The first month is #{first_month_string}"
puts "The third month is #{third_month_string}"
puts "The ninth month is #{ninth_month_string}"

first_month_string = number_to_short_month_name(1)
third_month_string = number_to_short_month_name(3)
ninth_month_string = number_to_short_month_name(9)
puts "The first month in 3 letters is #{first_month_string}"
puts "The third month in 3 letters is #{third_month_string}"
puts "The ninth month in 3 letters is #{ninth_month_string}"


##### Further Challenges (not required),  try to write the expectation first if you can.

####http://ruby-doc.org/core-2.1.4/Float.html
####Given the length of a side of a cube calculate the volume
first_cube = get_cube_volume(3)
second_cube = get_cube_volume(2)
third_cube = get_cube_volume(25)
puts "The volume of cube with length 3 is #{first_cube}"
puts "The volume of cube with length 2 is #{second_cube}"
puts "The volume of cube with length 25 is #{third_cube}"

####Given the radius of a sphere calculate the volume
first_sphere = get_sphere_volume(3)
second_sphere = get_sphere_volume(2)
third_sphere = get_sphere_volume(25)
puts "The volume of sphere with radius 3 is #{first_sphere}"
puts "The volume of sphere with radius 2 is #{second_sphere}"
puts "The volume of sphere with radius 25 is #{third_sphere}"

####Can you extend this to calculate other shapes' volumes? (Cylinder, Rectangular Prism, Cone, Capsule)
first_prism = get_rectprism_volume(3, 3, 5)
second_prism = get_rectprism_volume(2, 3, 9)
third_prism = get_rectprism_volume(6, 1, 3)
puts "The volume of rectangular prism with width 3, height, 3 and length 5 #{first_prism}"
puts "The volume of rectangular prism with width 2, height, 3 and length 9 #{second_prism}"
puts "The volume of rectangular prism with width 6, height, 1 and length 3 #{third_prism}"

first_cone = get_cone_volume(3, 12)
second_cone = get_cone_volume(7, 10)
third_cone = get_cone_volume(5, 3)
puts "The volume of cone with radius 3 and height 12 is #{first_cone}"
puts "The volume of cone with radius 7 and height 10 is #{second_cone}"
puts "The volume of cone with radius 5 and height 3 is #{third_cone}"

first_cap = get_cap_volume(3, 12)
second_cap = get_cap_volume(7, 10)
third_cap = get_cap_volume(5, 3)
puts "The volume of capsule with radius 3 and height 12 is #{first_cap}"
puts "The volume of capsule with radius 7 and height 10 is #{second_cap}"
puts "The volume of capsule with radius 5 and height 3 is #{third_cap}"

####http://ruby-doc.org/stdlib-2.1.1/libdoc/date/rdoc/Date.html
####Days until christmas, Calculate how many nights there are from today until Christmas morning.
puts "There are #{days_till_christmas(Time.now)} days till Christmas."

####Given a date of birth, calculate how old a person born on that date would be
first_age = get_age('08/12/1993')
second_age = get_age('15/11/1993')
third_age = get_age('17/11/2015')
puts "If you were born on 08/12/1993 you are #{first_age} years old."
puts "If you were born on 08/12/1993 you are #{second_age} years old."
puts "If you were born on 08/12/1993 you are #{third_age} years old."

#### Create a command line interface using put, gets to interact with the your functions 
get_user_input()









