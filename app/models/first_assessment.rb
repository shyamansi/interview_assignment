class StringCalculator
def add(numbers)
return 0 if numbers.empty?
num_list = numbers.split(',').map(&:to_i)

total = num_list.sum

return total
end
end

calculator = StringCalculator.new
puts calculator.add("")       
puts calculator.add("1")     
puts calculator.add("1,5")    
