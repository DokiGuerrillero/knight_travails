# frozen_string_literal: true

# Board lol
class Board
  def initialize
    puts comp_board
  end

  def comp_board(pieces = [['♙', [0, 1]], ['♙', [1, 1]]])
    arr = []
    (-7..0).each do |y|
      arr.push("\t")
      (0..7).each do |x|
        piece = pieces.select { |data| data[1] == [x, y.abs] }[0]
        piece = piece[0] unless piece.nil?
        piece = ((x + y) % 2).zero? ? bg_black(piece) : bg_white(piece)
        arr.push(piece)
      end
      arr.push("\n")
    end
    arr.join('')
  end

  def bg_black(value)
    value = ' ' if value.nil?
    "\e[48;2;175;175;175m\e[30m #{value}\e[0m"
  end

  def bg_white(value)
    value = ' ' if value.nil?
    "\e[48;2;225;225;225m\e[30m #{value}\e[0m"
  end
end

Board.new
