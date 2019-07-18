require ('rspec')
require ('coinstar')

describe('#coin counter') do
  it('should return the number of coins from inputted number') do
    coinstar = Coinstar.new()
    expect(coinstar.change(57)).to(eq("The smallest amount of coins from your change would be 2 quarters, 0 dimes, 1 nickels, and 2 pennies"))
  end
end
