class NegativeNumberError < StandardError
def initialize(number)
super("negative numbers not allowed #{number}")
end
end

def add(a, b)
raise NegativeNumberError.new(a) if a < 0
raise NegativeNumberError.new(b) if b < 0
a + b
end

begin
puts add(5, -3)
rescue NegativeNumberError => e
puts e.message
end
