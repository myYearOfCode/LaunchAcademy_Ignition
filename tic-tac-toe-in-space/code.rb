def print_grid(board)
  board.each_with_index do |row, index|
    row.each_with_index do |each, index|
      if each.nil?
        row[index] = " "
      end
    end
    puts " " + row.join(" | ")
    if index < 2
      puts "-----------"
    end
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

print_grid(board_b)
