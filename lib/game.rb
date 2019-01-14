class Game
  
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
    
  PLAYER_TOKENS = { 1 => "X", 2 => "O" }
  
  def initialize(player_1 = Players::Human.new(PLAYER_TOKENS[1]),
                  player_2 = Players::Human.new(PLAYER_TOKENS[2]), 
                  board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def current_player
    [player_1, player_2][board.turn_count % 2]
  end
    
  def won?
    puts "hello"
    puts board.cells
    [player_1.token, player_2.token].each do |p|
      plays = []
      board.cells.each_with_index do |cell, index|
        if cell == plays
          plays << index
          return true
        end
      end
      puts plays
    end
    return false
  end
    
end