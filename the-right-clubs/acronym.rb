# file: acronyms.rb
require "pry"

acronyms = {
  "EST" => "Eastern Standard Time",
  "EOF" => "End of File",
  "SSN" => "Social Security Number",
  "UFO" => "Unidentified Flying Object",
  "NASA" => "National Aeronautics and Space Administration",
  "MTV" => "Music Television",
  "DAEMON" => "Disk And Execution Monitor"
}

output = ""
acronyms.each_key do |key|
  output += "#{key}, "
end
puts output

puts acronyms.keys.join(', ')
