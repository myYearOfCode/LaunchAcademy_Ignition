scoreCard = [
  {Hole: 1,Par: 5, strokes: 7},
  {Hole: 2,Par: 4, strokes: 5},
  {Hole: 3,Par: 3, strokes: 3},
  {Hole: 4,Par: 4, strokes: 4},
  {Hole: 5,Par: 4, strokes: 4},
  {Hole: 6,Par: 3, strokes: 2},
  {Hole: 7,Par: 4, strokes: 5},
  {Hole: 8,Par: 5, strokes: 5},
  {Hole: 9,Par: 4, strokes: 5},
  {Hole: 10,Par: 5, strokes: 7},
  {Hole: 11,Par: 4, strokes: 4},
  {Hole: 12,Par: 4, strokes: 4},
  {Hole: 13,Par: 3, strokes: 3},
  {Hole: 14,Par: 4, strokes: 5},
  {Hole: 15,Par: 4, strokes: 2},
  {Hole: 16,Par: 4, strokes: 4},
  {Hole: 17,Par: 3, strokes: 3},
{Hole: 18,Par: 5, strokes: 0}
]

totalPar = 0
totalScore = 0
scoreCard.each do |hole|
  totalPar += hole[:Par]
  totalScore += hole[:strokes]
end

puts "Total strokes: #{totalScore}"
puts "Total par: #{totalPar}"

if totalScore > totalPar
  puts "You were #{totalScore - totalPar} strokes over par."
end
if totalScore < totalPar
  puts "You were #{totalPar - totalScore} strokes under par."
end
if totalScore == totalPar
  puts "You were even with par."
end
