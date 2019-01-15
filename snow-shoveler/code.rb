# 20190115
require 'rspec/autorun'

class Shoveling_Quote

  def get_input
    # user input validated to be numeric
    begin
      puts('Please enter your length in feet.')
      length = Float(gets.chomp)
    rescue
        puts('Try again. That wasn\'t a number')
        retry
    end

    begin
      puts('Please enter your width in feet.')
      width = Float(gets.chomp)
    rescue
        puts('Try again. That wasn\'t a number')
        retry
    end

    begin
      puts('Please enter your depth in inches.')
      depth = Float(gets.chomp)
    rescue
      puts('Try again. That wasn\'t a number')
      retry
    end

    return length, width, depth
  end

  def calculate_area(length, width, depth)
    # return volume of snow  - only needed for testing
    cubicArea = (width * depth * length).ceil #round up. Greedy martian shovelers...
    puts('Cubic volume:')
    puts(cubicArea.to_s + " Cubic Feet")
    return cubicArea
  end

  def make_quote(cubicArea)
    # Switch statement! Return price from pricing structure
    case cubicArea
      when 0..49
        price =  20
      when 50..149
        price =  50
      when 150..299
        price = 100
      else
        price = 150
    end
    return price
  end

  def output_quote(price)
    # return price to console
    puts("Price:")
    puts format("$%.2f",price)
  end

  def run
    # this is where the magic happens ;)
    length, width, depth = get_input
    cubicArea = calculate_area(length, width, depth)
    price = make_quote(cubicArea)
    output_quote(price)
  end
end

myQuote = Shoveling_Quote.new
myQuote.run

# TESTING
describe Shoveling_Quote do
  it 'should output a price to console' do
    myQuote = Shoveling_Quote.new
    expect {myQuote.output_quote(10)}.to output("Price:\n$10.00\n").to_stdout
  end

  it 'should return 20 when given 40' do
    myQuote = Shoveling_Quote.new
    expect(myQuote.make_quote(40)).to eq(20)
  end

  it 'should return 120 when given 10,6,24' do
    myQuote = Shoveling_Quote.new
    expect(myQuote.calculate_area(10,6,2)).to eq(120)
  end

  it 'should return 120 when given 10,6,24' do
    myQuote = Shoveling_Quote.new
    expect(myQuote.calculate_area(10,6,2)).to_not eq(121)
  end
end
