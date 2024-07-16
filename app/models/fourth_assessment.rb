class StringCalculator
def add(numbers)
return 0 if numbers.empty?

delimiter = ","

if numbers.start_with?("//")
parts = numbers.split("\n", 2)
delimiter = parts[0][2..-1] # Get the custom delimiter
numbers = parts[1]
end

num_list = numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)

