def return_10
  return 10
end

def add(i1, i2)
  return i1 + i2
end

def subtract(i1, i2)
  return i1 - i2
end

def multiply(i1, i2)
  return i1 * i2
end

def divide(i1, i2)
  return i1 / i2
end

def length_of_string(s)
  return s.length
end

def join_string(s1, s2)
  return s1 + s2
end

def add_string_as_number(s1, s2)
  return s1.to_i + s2.to_i
end

def number_to_full_month_name(month)
  case month
    when 1
      'January'
    when 2
      'February'
    when 3
      'March'
    when 4
      'April'
    when 5
      'May'
    when 6 
      'June'
    when 7
      'July'
    when 8
      'August'
    when 9
      'September'
    when 10
      'October'
    when 11 
      'November'
    when 12
      'December'
  end
end

def number_to_short_month_name(month)
  return number_to_full_month_name(month)[0,3]
end

def get_cube_volume(i)
  return i**3
end

def get_sphere_volume(r)
  return ( r.to_f**3 * (4.0 / 3.0) ) * Math::PI
end

def get_rectprism_volume(w, h, l)
  return w * h * l
end

def get_cone_volume(r, h)
  return (Math::PI * (r.to_f**2)) * (h.to_f / 3)
end

def get_cap_volume(r, h)
  cyl_volume = Math::PI * (r.to_f**2) * h.to_f
  return cyl_volume + get_sphere_volume(r)
end

def seconds_to_days(i)
  minutes = i / 60
  hours = minutes / 60
  days = hours / 24
  return days.to_i
end

def days_till_christmas(date)
  christmas = Time.new(2015, 12, 25)
  return seconds_to_days(christmas - date)
end

def get_age(date)
  # split the date at /
  date_a = date.split('/')
  # assign the split date to variables
  day = date_a[0].to_i
  month = date_a[1].to_i
  year = date_a[2].to_i

  today = Time.now
  # get the given date but this year
  date = Time.new(today.year, month, day)

  # if date has passed
  if date < today
    return today.year - year
  end
  return today.year - year - 1
end



# ===/ Handling user input \===
def option_add()
  print "What's the first number you want to add? "
  first_number = gets.to_i
  print "What's the second number you want to add? "
  second_number = gets.to_i
  puts "The answer to #{first_number} + #{second_number} is #{add(first_number, second_number)}"
end

def option_subtract()
  print "What's the number you want to subtract from? "
  first_number = gets.to_i
  print "What's the number you want to subtract? "
  second_number = gets.to_i
  puts "The answer to #{first_number} - #{second_number} is #{subtract(first_number, second_number)}"
end

def option_multiply()
  print "What's the first number you want to multiply? "
  first_number = gets.to_i
  print "What's the second number you want to multiply? "
  second_number = gets.to_i
  puts "The answer to #{first_number} x #{second_number} is #{multiply(first_number, second_number)}"
end

def option_divide()
  print "What's the number you want to divide? "
  first_number = gets.to_i
  print "What's the number you want to divide it by? "
  second_number = gets.to_i
  puts "The answer to #{first_number} / #{second_number} is #{divide(first_number, second_number)}"
end

def option_len_of_string()
  print "What's the string you want the length of? "
  user_input = gets.chomp
  puts "The the length of #{user_input} is #{length_of_string(user_input)}"
end

def option_join_string()
  print "What's the first string you want to join to? "
  user_input1 = gets.chomp
  print "What's the string you want to join? "
  user_input2 = gets.chomp
  puts join_string(user_input1, user_input2)
end

def option_full_month()
  print "What's the month you want to find the full name of e.g. 8? "
  user_input = gets.to_i
  puts "The #{user_input} month is #{number_to_full_month_name(user_input)}"
end

def option_short_month()
  print "What's the month you want to find the short name of e.g. 8? "
  user_input = gets.to_i
  puts "The #{user_input} month is #{number_to_short_month_name(user_input)}"
end

def option_cube_volume()
  print "What is the length of the cube you want to find the volume of? "
  number = gets.to_i
  puts "The volume of a cube with length of #{number} is #{get_cube_volume(number)}"
end

def option_sphere_volume()
  print "What is the radius of the sphere you want to find the volume of? "
  number = gets.to_i
  puts "The volume of a sphere with radius of #{number} is #{get_sphere_volume(number)}"
end

def option_rectprism_volume()
  print "What is the width of the rectangular prism you want to find the volume of? "
  w = gets.to_i
  print "What is the height of the rectangular prism you want to find the volume of? "
  h = gets.to_i
  print "What is the length of the rectangular prism you want to find the volume of? "
  l = gets.to_i
  puts "The rectangular prism with width #{w}, height #{h} and length #{l} has volume of #{get_rectprism_volume(w, h, l)}"
end

def option_cone_volume
  print "What is the radius of the cone you want to find the volume of? "
  r = gets.to_i
  print "What is the height of the cone you want to find the volume of? "
  h = gets.to_i
  puts "The volume of a cone with radius #{r} and heaight #{h} is #{get_cone_volume(r, h)}"
end

def option_cap_volume
  print "What is the radius of the capsule you want to find the volume of? "
  r = gets.to_i
  print "What is the height of the capsule you want to find the volume of? "
  h = gets.to_i
  puts "The volume of a capsule with radius #{r} and height #{h} has a volume of #{get_cap_volume(r, h)}"
end

def option_christmas
  puts "There are #{days_till_christmas(Time.now)} days till Christmas."
end

def option_calculate_age
  print "What is your date of birth, in the format dd/mm/yyyy? "
  user_input = gets.strip
  puts "If you were born on #{user_input} you are #{get_age(user_input)} years old."
end

def get_user_input()
  answer = 1
  while answer != 0 do
    puts ""
    puts ""
    puts "0: exit\t\t1: add\t\t\t2:subtract"
    puts "3: multiply\t4: divide\t\t5: length of string"
    puts "6: join string\t7: full month\t\t8: short month"
    puts "9: cube volume\t10: sphere volume\t11: rectangular prism volume"
    puts "12: cone\t13: capsule\t\t14: days till christmas"
    puts "15: calculate age"
    print 'What do you want to do? '
    answer = gets.strip.to_i

    case answer
      when 1
        option_add()
      when 2
        option_subtract()
      when 3
        option_multiply()
      when 4
        option_divide()
      when 5
        option_len_of_string()
      when 6
        option_join_string()
      when 7
        option_full_month()
      when 8
        option_short_month()
      when 9
        option_cube_volume()
      when 10
        option_sphere_volume()
      when 11
        option_rectprism_volume()
      when 12
        option_cone_volume()
      when 13
        option_cap_volume()
      when 14
        option_christmas()
      when 15
        option_calculate_age()
    end
  end
end