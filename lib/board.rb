require 'pry'
# represents the data and logic of a Tic-tac-toe game board

class Board

  attr_accessor :cells
  # what do we need?
  # board state array
  def initialize
    @cells = Array.new(9, ' ')
  end

  def reset!
    self.cells = Array.new(9, ' ')
  end

  def display
    # pretty prints the content of self.cells
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    # expect(output).to include(" X | X | X ")
    # expect(output).to include("-----------")
    # expect(output).to include(" X | O | O ")
    # expect(output).to include("-----------")
    # expect(output).to include(" X | O | O ")
  end

  def position(cell)
    self.cells[cell.to_i - 1]
  end

  def full?
    !self.cells.include?(" ")
  end

  def turn_count
    9 - self.cells.count(" ")
  end

  def taken?(pos)
    # binding.pry
    # !pos.to_i == " "
    !(self.cells[pos.to_i - 1] == " ")
  end

  def valid_move?(pos)
    !taken?(pos) && pos.to_i.between?(1, 9)
  end

  def update(pos, player)
    # binding.pry
    self.cells[pos.to_i - 1] = player.token
  end

end
