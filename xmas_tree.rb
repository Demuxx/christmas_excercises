def string_builder(width, counter)
  left_side = "/"
  right_side = "\\"
  padding = "_"
  orn_char = ""
  string_out = ""
  
  if counter.odd?
    orn_char = left_side
  else
    orn_char = right_side
  end
  
  string_out << left_side
  counter = 1
   (width-2).times {
    if counter.odd?
      string_out << padding
    else
      string_out << orn_char
    end
    counter += 1
  }
  string_out << right_side
  string_out
end

height = 30

line_width = 1
line_counter = 1
height.times {
  if line_counter == 1
    string_out = "@"
  else
    string_out = string_builder(line_width, line_counter)
  end
  line_width += 2
  line_counter += 1
  puts string_out.center(height*2+1)
}
puts "|    |".center(height*2+1)
puts "|    |".center(height*2+1)

