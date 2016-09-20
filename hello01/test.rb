#!/usr/bin/env ruby


a = [1,2,3,4]                # Start with an array
b = a.map {|x| x*x }         # Square elements: b is [1,4,9,16]
c = a.select {|x| x%2==0 }   # Select even elements: c is [2,4]
a.inject do |sum,x|          # Compute the sum of the elements => 10
  sum + x
  #puts x.to_s
end


#print "What is your name? "
#name = gets.chomp
#puts "Hello #{name}!"


h = {                         # A hash that maps number names to digits
  :one => 1,                  # The "arrows" show mappings: key=>value
  :two => 2                   # The colons indicate Symbol literals
}  
h[:one]                       # => 1.  Access a value by key
h[:three] = 3                 # Add a new key/value pair to the hash
h.each do |key,value|         # Iterate through the key/value pairs
  puts "#{value}:#{key}; "   # Note variables substituted into string 
  puts value.to_s + ":" + key.to_s + "|"
  puts key.to_s
end                           # Prints "1:one; 2:two; 3:three; "


File.open("data.txt") do |f| # Open named file and pass stream to block
  line = f.readline          # Use the stream to read from the file
  puts "#{line}"
end                          # Stream automatically closed at block end


def square(x)   # Define a method named square with one parameter x
  x*x           # Return x squared
end             # End of the method

puts square(323211).inspect

puts "test"




x, y = 1, 2     # Same as x = 1; y = 2
a, b = b, a     # Swap the value of two variables
x,y,z = [1,2,3] # Array elements automatically assigned to variables

puts x.to_s
puts z.to_s


# Define a method to convert Cartesian (x,y) coordinates to Polar
def polar(x,y)
  theta = Math.atan2(y,x)   # Compute the angle
  r = Math.hypot(x,y)       # Compute the distance
  [r, theta]                # The last expression is the return value
end


# Here's how we use this method with parallel assignment
distance, angle = polar(2,2)

puts distance
puts angle



# A method to ask the user to confirm something
def are_you_sure?                  # Define a method. Note question mark!
  while true                       # Loop until we explicitly return
    print "Are you sure? [y/n]: "  # Ask the user a question
    response = gets                # Get her answer
    case response                  # Begin case conditional
    when /^[yY]/                   # If response begins with y or Y
      return true                  # Return true from the method
    when /^[nN]/, /^$/             # If response begins with n,N or is empty
      return false                 # Return false
    end
  end
end


puts are_you_sure?


10.times { puts "test".object_id }