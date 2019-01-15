require 'rspec/autorun'

class StreetShow
  def sumTips(skill)
    # returns sum and length
    total = 0
    for j in skill
      total += j
    end
    return [total, skill.length]
  end

  def output_sums(knife_Juggling, torch_Juggling, hand_Balancing, human_Blockhead)
    puts('Knife Juggling:')
    knife_Juggling_total, knife_Juggling_length = sumTips(knife_Juggling)
    puts format("%.2f", knife_Juggling_total)

    puts('Torch Juggling:')
    torch_Juggling_total, torch_Juggling_length = sumTips(torch_Juggling)
    puts format("%.2f", torch_Juggling_total)

    puts('Hand Balancing:')
    hand_Balancing_total, hand_Balancing_length = sumTips(hand_Balancing)
    puts format("%.2f", hand_Balancing_total)

    puts('Human Blockhead:')
    human_Blockhead_total, human_Blockhead_length = sumTips(human_Blockhead)
    puts format("%.2f", human_Blockhead_total)

    puts('Total:')
    total = knife_Juggling_total + torch_Juggling_total + hand_Balancing_total + human_Blockhead_total
    puts format("%.2f", total)

    tipCount = knife_Juggling_length + torch_Juggling_length + hand_Balancing_length + human_Blockhead_length
    return total, tipCount
  end

  def calculate_average(total,tipCount)
    puts('Average:')
    average = format("%.4f", total/tipCount)
    puts average + "\n"
    return average
  end

  def part_two
  ######### part 2
    puts("Hello everybody! Today, I will be showing you acts of great daring. Can I have an audience volunteer?
    \nThere's our brave volunteer! What's your name?")
    volunteerName = gets.chomp
    puts("Thank you. Can everyone welcome #{volunteerName} to the stage?")
    puts("#{volunteerName}, what is your favorite number?")
    favNumber = gets.chomp.to_i
    puts("Ok #{volunteerName}, my friend and I will be juggling these razor-sharp knives around you for #{favNumber} seconds. Are you prepared to be amazed?")
  end

  def run
    knife_Juggling =  [2.10, 0.77, 5.00, 1.00, 3.00]
    torch_Juggling = [6.00, 3.50, 7.00]
    hand_Balancing = [2.00, 1.00]
    human_Blockhead = [0.75, 0.43]

    total, tipCount = output_sums(knife_Juggling, torch_Juggling, hand_Balancing, human_Blockhead)
    calculate_average(total,tipCount)
    part_two
  end
end

myShow = StreetShow.new
myShow.run

describe StreetShow do
  it "should return an Array from sumTips" do
    myShow = StreetShow.new
    expect(myShow.sumTips([1,2,3,4,5]).class).to eq(Array)
  end

  it "should correctly calculate the sum of an array" do
    myShow = StreetShow.new
    expect(myShow.sumTips([1,2,3,4,5])[0]).to eq(15)
  end

  it "should correctly calculate the length of an array" do
    myShow = StreetShow.new
    expect(myShow.sumTips([1,2,3,4,5])[1]).to eq(5)
  end

  it "should correctly calculate an average from calculate_average" do
    myShow = StreetShow.new
    expect(myShow.calculate_average(15,3)).to eq("5.0000")
  end

  it "should correctly return a string from calculate_average" do
    myShow = StreetShow.new
    expect(myShow.calculate_average(15,3).class).to eq(String)
  end
end
