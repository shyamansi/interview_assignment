class StringCalculator
def add(numbers)
return 0 if numbers.empty?


num_list = numbers.gsub("\n", ',').split(',').map(&:to_i)


total = num_list.sum

return total
end
end

calculator = StringCalculator.new      
puts calculator.add("1\n2,3")     
