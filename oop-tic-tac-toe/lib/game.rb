require_relative "board"
require_relative "space"
require_relative "player"
require 'pry'

class Game
  def initialize
    @players = []
    @turn = 0
    @board = Board.new
  end

  def toggle_turn!
    old_val = @turn
    @turn = (@turn == 0 ? 1 : 0)
    puts "was #{old_val} is now #{@turn}"
  end

  def play
    assign_names
    show_board
    while game_over == "false"
        get_move
        toggle_turn!
        show_board
    end
    if game_over == "tie"
      puts "Tie game!"
    else
      puts "Game Over! \nPlayer '#{@players[@turn].name}' wins!"
    end
  end

  def index_lookup(row,column)
    return (row-1)*3+column-1
  end

  def get_move
    index = 0
    loop do
      puts "#{@players[@turn].name} please enter your column"
      column = gets.chomp().to_i
      puts "#{@players[@turn].name} please enter your row"
      row = gets.chomp().to_i
      index = index_lookup(row,column)
      break if board_lookup(index)
      puts "That spot is already taken!!"
    end
    place_move(index)
  end

  def place_move(move)
    if @board.value[move].value == " "
      @board.value[move].value = @players[@turn].symbol
    end
  end

  def board_lookup(index)
    @board.value[index].value == " "
  end

  def show_board
    puts "","#{@board.value[0].value} | #{@board.value[1].value} | #{@board.value[2].value}"
    puts "#{@board.value[3].value} | #{@board.value[4].value} | #{@board.value[5].value}"
    puts "#{@board.value[6].value} | #{@board.value[7].value} | #{@board.value[8].value}",""
  end

  def assign_names
    puts "Player one please enter your name."
    player1_name = gets.chomp()
    puts "Please enter your letter (only one please)."
    @players.push(Player.new(player1_name, gets.chomp()[0]))
    puts "Player two please enter your name."
    player2_name = gets.chomp()
    puts "Please enter your letter (only one please)."
    @players.push(Player.new(player2_name, gets.chomp()[0]))
  end

  def game_over
    wins = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    wins.each do |winning_formation|
        if @board.value[winning_formation[0]].value == @board.value[winning_formation[1]].value && @board.value[winning_formation[0]].value == @board.value[winning_formation[2]].value && @board.value[winning_formation[0]].value != " "
          return "true"
        end
    end
    for i in 0..8
      if @board.value[i].value == " "
        return "false"
      end
    end
    return "tie"
  end
end
