require ('pry')
require ('colorize')

class Coinstar
attr_accessor(:quarters, :dimes, :nickels, :pennies)
def initialize
@quarters = 0
@dimes = 0
@nickels = 0
@pennies = 0
end

def change(num)
  @quarters = num / 25
  @remainder = num % 25

  @dimes = @remainder / 10
  @remainder %= 10

  @nickels = @remainder / 5
  @remainder %= 5

  @pennies = @remainder / 1
   answer = "The smallest amount of coins from your change would be #{@quarters} quarters, #{@dimes} dimes, #{@nickels} nickels, and #{@pennies} pennies"

   answer
   # binding.pry
end
end

puts "Enter an amount of change under $1"
num = gets.chomp.tr('.', '').to_i
coinstar = Coinstar.new()
coinstar.change(num)
