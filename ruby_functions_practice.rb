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
  return month_name = number_to_full_month_name(month)[0,3]
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
  r = r.to_f
  h = h.to_f
  return (Math::PI * (r**2) * (h - 2 * r)) + (4/3 * Math::PI * (r**3))
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
  date_a = date.split('/')
  day = date_a[0].to_i
  month = date_a[1].to_i
  year = date_a[2].to_i

  today = Time.now
  date = Time.new(month, day, today.year)

  if date < today
    return today.year - year
  else
    return today.year - year - 1
  end

  
end