area_code = {
  "us" => "1",
  "ven" => "58",
  "can" => "1",
  "jam" => "323",
  "aus" => "43",
  "sp" => "234",
  "bkf" => "312"
}

def display_area(area_code)
  area_code.each do |area, code|
    puts area
  end
end

def get_code(area_code, area)
  area_code[area]
end

loop do
  puts "Do you want to get area code? (y/n)\n"
  prompt = gets.chomp

  if prompt != "y"
    break
  end
  
  puts "Select from below: \n"
  display_area(area_code)

  puts "Enter selection: \n"
  prompt = gets.chomp

  if area_code.include?(prompt)
    puts "The area code for #{prompt} is #{get_code(area_code, prompt)}\n"
  else
    puts "You entered an invalid area\n"
  end
end
